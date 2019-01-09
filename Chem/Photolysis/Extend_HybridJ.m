%ExtendHybridJ.m
%Takes the HybridJvalues.mat file and additional files for the cross-section 
%and quantum yield of Cl and I species to generate
%HybridJValues_Extended.mat with additional J-values. 
%Only needs to be run once, then HybridJValues_Extended can be used in
%place of HybridJValues 

%PSR 190109


addpath('./HalogenJData');
%%
i = 0;
i = i + 1;
Jnames{i} = 'J_OClO';
CS{i} = 'Cross_Section_OClO_Wahner(1987)_296K_245-475nm(0.22nm).txt';
QY{i} = 1;

i = i + 1;
Jnames{i} = 'J_Cl2O2';
CS{i} = 'Cross_Section_ClOOCl_JPL-2010(2011)_190-250K_200-420nm(rec).txt';
QY{i} = 1;


i = i + 1;
Jnames{i} = 'J_ClOO';
CS{i} = 'Cross_Section_ClOO_JPL-2010(2011)_191K_220-280nm(rec).txt';
QY{i} = 1;

%Iodine Photolysis:
i = i + 1;
Jnames{i} = 'J_I2';
CS{i} = 'Cross_Section_I2_JPL-2010(2011)_295K_185-700nm(rec).txt';
QY{i} = 'QY_I2.txt';

i = i + 1;
Jnames{i} = 'J_HOI';
CS{i} = 'Cross_Section_HOI_JPL-2010(2011)_295-298K_280-480nm(rec).txt';
QY{i} = 1;

i = i + 1;
Jnames{i} = 'J_IO';
CS{i} = 'Cross_Section_IO_JPL-2010(2011)_298K_339-417nm(rec).txt';
QY{i} = 0.91;

i = i + 1;
Jnames{i} = 'J_OIO';
CS{i} = 'Cross_Section_OIO_JPL-2010(2011)_295K_516-572nm(rec).txt';
QY{i} = 1;

%Iodine Nitrates
i = i + 1;
Jnames{i} = 'J_INO';
CS{i} = 'Cross_Section_INO_JPL-2010(2011)_298K_223-460nm(rec).txt';
QY{i} = 1;

i = i + 1;
Jnames{i} = 'J_INO2';
CS{i} = 'Cross_Section_INO2_JPL-2010(2011)_298K_210-380nm(rec).txt';
QY{i} = 1;

i = i + 1;
Jnames{i} = 'J_INO3';
CS{i} = 'Cross_Section_IONO2_JPL-2010(2011)_298K_245-415nm(rec).txt';
QY{i} = 1;

%For I2Ox, following Sherwen et al 2016, which uses the CS and QY from INO3
%for all of these
i = i + 1;
Jnames{i} = 'J_I2O2';
CS{i} = 'Cross_Section_IONO2_JPL-2010(2011)_298K_245-415nm(rec).txt';
QY{i} = 0.21;

i = i + 1;
Jnames{i} = 'J_I2O4';
CS{i} = 'Cross_Section_IONO2_JPL-2010(2011)_298K_245-415nm(rec).txt';
QY{i} = 0.21;

i = i + 1;
Jnames{i} = 'J_I2O3';
CS{i} = 'Cross_Section_IONO2_JPL-2010(2011)_298K_245-415nm(rec).txt';
QY{i} = 0.21;

i = i + 1;
Jnames{i} = 'J_ICl';
CS{i} = 'Cross_Section_ICl_JPL-2010(2011)_298K_210-600nm(rec).txt';
QY{i} = 1; %Haven't checked this. 
%%
%Ok, now I just need to put everything together, so I can expand J_Hybrid.m
load HybridJvalues.mat

% J_OClO = zeros(size(Jhybrid.J1));
Added_J = struct();
for jInd = 1:numel(Jnames)
    Added_J.(Jnames{jInd}) = zeros(size(Jhybrid.J1));
end

for altInd = 1:16
    %For each one, open and read the appropriate TUV file
%     cd ~/CohenResearch/Models/TUV5.2/
    filename = ['f0_z',num2str(altInd),'.txt'];
    fID = fopen(filename);
    fgetl(fID); fgetl(fID); fgetl(fID); fgetl(fID);
    F = fscanf(fID,'%f',[20,156]);
    F = F';
    fclose(fID);
%     cd ~/CohenResearch/Models/F0AMv3.1/Chem/Photolysis/

    for szaInd = 1:19
        LF = F(:,[1,szaInd+1]);
        
        for jInd = 1:numel(Jnames)
            curr_J_data = IntegrateJ(CS{jInd},QY{jInd},LF,285,950); 
            curr_J_4D = Added_J.(Jnames{jInd});
            for albInd = 1:size(Jhybrid.J1,2)
                for o3cInd = 1:size(Jhybrid.J1,3)
                    curr_J_4D(szaInd,albInd,o3cInd,altInd) = curr_J_data;
                end
            end
            Added_J.(Jnames{jInd}) = curr_J_4D;
        end
    end
end
        
Jhybrid = Jhybrid;
for jInd = 1:numel(Jnames)
    Jhybrid.(Jnames{jInd}) = Added_J.(Jnames{jInd});
end

save('HybridJvalues_Extended','SZAhybrid','ALBhybrid','O3Chybrid','ALThybrid','Jhybrid');