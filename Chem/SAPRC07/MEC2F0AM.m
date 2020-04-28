function MEC2F0AM(SAPRC_flnm,save_flnm)
% function MEC2F0AM(SAPRC_flnm,save_flnm)
% function to convert a .mec file (used for SAPRC mechanisms) into F0AM readable code.
% 
% NOTE ON LIMITATIONS AND POTENTIAL IMPROVEMENTS
% Currently, this scrit is more or less hard-coded to only work with SAPRC07B.MEC.
% A few changes to text reading and implentation of rate constants could help with generalization.
% 1) The "Special" operator definitions at the top of the file are currently discarded.
%       They should be read in and used to define the operators in the appropriate section.
% 2) The use of SAPRC07_K.m and BRrate_constant.mat means that these rate coefficients are effectively
%       hard-coded; however, all information needed to calculate them is contained in the .mec file.
%       It would be better to read that information into the script and use it explicitly.
% 3) The "reaction numbers" should be added as comments to the top of each reaction block in the 
%       .m script file to help with traceability.
% These changes are not difficult and could be achieved with a few days work from a motivated
% student.
%
% 20200329 Hongyu Chen
% 20200423 GMW  Fixed various bugs regarding stoichiometric coefficients and treatment of steady
% state operators.

warning(['MEC2F0AM.m was designed to work with SAPRC07B.MEC and '...
    'may or may not work with all .mec files. Please carefully evaluate newly-generated F0AM mechanisms '...
    'and see header of this function for suggested improvements.'])

fid=fopen(SAPRC_flnm);

%% -----Grab the Species names, reactions and the rate constants

% We don't need to grab the special species and their rate constants
% right here because they are just some reference

l = fgetl(fid);
while ~strncmp(l,'REACTIONS(CM)',13)%scroll through headers and go to the reaction part
    l=fgetl(fid);
end

while ~strncmp(l,'<',1)%scroll through the reaction headers and comment and go to the reaction part
    l=fgetl(fid);
end


rstart = ftell(fid)-length(l)-2; %start of reactions

%% grab reaction numbers

fseek(fid,rstart,'bof');%back to the beginning of the reaction
l = fgetl(fid);
nRx = 0;%Count the reaction numbers
while ~strncmp(l,'endmech',7) % If haven't reach the end of the file
    
    if strncmp(l,'<',1) == 1  %count how many reaction we have(based on <RXN>)
        nRx = nRx + 1;
        
    end
    l = fgetl(fid);
    % scroll through every line to find how many line starts with the character '<'
    %and count it as the reaction numbers.
end

fseek(fid,rstart,'bof');%back to the beginning of the reaction
[l]=fgets(fid);

%% ---------grab the reaction-------------------

%read all reactions and parse into cell arrays

%%find the total rows of reaction. This is to determine how many rows we need to read to grab all reactions.
row=1;
while ~strncmp(l,'endmech',7) % see if it is the end of file.
    row=row+1; % add row
    [l]=fgets(fid); % read each line
end %find the total rows of reaction. This is to determine how many rows we need to read to grab all reactions.





fseek(fid,rstart,'bof');%back to the beginning of the reaction
[l]=fgets(fid);
comment = 0;%Initialize the comment line number inside the reaction file.

%%scroll through every line to find how many comment in the reaction'
while feof(fid) ~= 1 % If haven't reach the end of the file
    l = fgetl(fid);
    
    if contains(l,'!') == 1  %if there are comments in the rxn file, let it continue to read the next line.
        comment = comment + 1;%the comment line number add 1.
        
    end
    
end
fseek(fid,rstart,'bof');%back to the beginning of the reaction
l = fgetl(fid);

k = cell(nRx,9);%store the rate constant
Rnames = cell(nRx,1);%store the reaction
offset = 0;%multiple line reaction offset
j = 0;%comment offset
for i=1:row
    s2 = 0;%initialize s2
    
    if  l == -1
        break
        
    elseif   contains(l,'!') == 1 %scroll through comments in reactions
        j = j + 1; % the offest line number of the comments add 1
        l = fgetl(fid);%doing nothing and read next line
    elseif (strncmp(l,'<',1) == 1 && contains(l,'#') == 1)% The 'perfect reaction':The reaction and the rate constant are in
        %the one single line.
        s1 = regexp(l,'>','start');%find the index of the reaction number
        s2 = regexp(l,'#','start');%find the index of where the rate constant starts
        k{i-offset-j} = l(s2+1:end);%starting after '#', grab the rate constant
        Rnames{i-offset-j} = l(s1+1:s2-1);%start after">" grab the rate constant before "#"
        l = fgetl(fid);
    elseif (strncmp(l,'<',1) == 1 && contains(l,'#') == 0)% The reaction who has multiple line.In this elseif, we
        %just grab its first line. We will glue rest of the reaction
        %into this line later.
        s1 = regexp(l,'>','start');
        Rnames{i-offset-j} = l(s1+1:end);
        l = fgetl(fid);
    elseif (strncmp(l,'<',1) == 0 && contains(l,'#') == 0)%This is a row where it only contains the rest of the reaction(no rate constant)
        %glue the other line of the reactions to the first line
        offset = offset + 1;
        Rnames{i-offset-j} = [Rnames{i-offset-j},l(9:end)];%glue the reaction back to the first line of reaction we grabbed
        %before.
        l = fgetl(fid);
        
        
    elseif  strncmp(l,'        #',9) == 1%the line where there is only k rate.(no reaction at all)
        offset = offset + 1;
        s3 = regexp(l,'#','start');
        k{i-offset-j} = l(s3+1:end);%put the rate constant to the corresponding line of the reaction.
        l = fgetl(fid);
        
        
    else             %the linehas both the rest of the reaction and the rate constant
        offset = offset + 1;
        l = l(8:end);
        s4 = regexp(l,'#','start');
        Rnames{i-offset-j} = [Rnames{i-offset-j},l(1:s4-1)];%glue the reaction back to the first line of reaction we grabbed
        %before.
        k{i-offset-j} = l(s4+1:end);%put the rate constant to the corresponding line of the reaction.
        l = fgetl(fid);
        
        
    end
    
end
fclose(fid);

%% -----Pre-processing of the k and Rnames
%delete ';' from k
for i = 1:nRx
    snd = regexp(k{i,1},';','start');
    K = k{i,1};
    k{i,1} = K(1:snd-1);
end

%delete '%' from Rnames
%e.g.<27> OH + HNO3 = NO3 %2

for i = 1:nRx
    if contains(Rnames{i,1},'%') == 1
        R = Rnames{i,1};
        sp = regexp(Rnames{i,1},'%','start');
        Rnames{i,1} = R(1:sp-1);
    end
end

%% -----convert the k constant format

for i=1:nRx
    if contains(k(i,1),'/') == 1 % J value reaction k = A * J
        K = k{i,1};
        s5 = regexp(K,'/','start');
        k{i,1} = K(1:s5-1);%A
        k{i,2} = K(s5+1:end);%J label
        
        % reformat J-value string
        k{i,2} = strrep(k{i,2},'<','J');
        k{i,2} = strrep(k{i,2},'-','_');
        k{i,2} = erase(k{i,2},'>');
        
        k{i,1} = [num2str(k{i,1}) '.*' char(k{i,2})];
        
    elseif (count(k(i,1),'@') == 1 && count(k(i,1),'^') == 0 && count(k(i,1),'&') == 0 )%k = A x exp(-E/*T)
        K = k{i,1};
        s6 = regexp(K,'@','start');
        k{i,1} = K(1:s6-1);%A
        k{i,2} = -str2double(K(s6+1:end));%-E
        A = num2str(k{i,1});
        E_ = num2str(k{i,2});%-E
        k{i,1} = [A '.*exp(' E_ './ T)'];
        
    elseif (count(k(i,1),'@') == 0 && count(k(i,1),'^') == 1 && count(k(i,1),'&') == 0 )%count(k(i,1),'^') == 1%k = A .* (T./300)^B
        K = k{i,1};
        s7 = regexp(K,'\^','start');
        k{i,1} = K(1:s7-1); %A
        k{i,2} = K(s7+1:end); %B
        A = num2str(k{i,1});
        B = num2str(k{i,2});
        k{i,1} = [A '.*(T./300).^' B ];%k = A .* (T./300)^B
        
    elseif (count(k(i,1),'^') == 1 && count(k(i,1),'@') == 1 && count(k(i,1),'&') == 0)%k=Ax(T/300)^B *exp(-E/*T)
        %k(:,i) = 2.03e-16.*(T./300).^4.57.*exp(693./T);
        K = k{i,1};
        s7 = regexp(K,'\^','start');
        s8 = regexp(K,'@','start');
        k{i,1} = K(1:s7-1);%A
        k{i,2} = K(s7+1:s8-1);%B
        k{i,3} = -str2double(K(s8+1:end));%-E
        k{i,1} = [num2str(k{i,1}) '.*(T./300).^' num2str(k{i,2}) '.*exp(' num2str(k{i,3}) './T)'];
        
    else %1.31e-11.*0.454;
        k{i,1} = k{i,1};
    end
    
    
end


%% Attach K file label:
for i=1:nRx
    if contains(Rnames(i,1),'O3P + NO = NO2')==1
        k{i,1} = {'K_O3P_NO'};
    elseif contains(Rnames(i,1),'O3P + NO2 = NO3')==1
        k{i,1} = {'K_O3P_NO2_NO3'};
    elseif contains(Rnames(i,1),'NO2 + NO3 = N2O5')==1
        k{i,1} = {'K_NO2_NO3'};
    elseif contains(Rnames(i,1),' N2O5 = NO2 + NO3')==1
        k{i,1} = {'K_N2O5'};
    elseif contains(Rnames(i,1),'OH + NO = HONO')==1
        k{i,1} = {'K_OH_NO'};
    elseif contains(Rnames(i,1),'OH + NO2 = HNO3')==1
        k{i,1} = {'K_OH_NO2'};
    elseif contains(Rnames(i,1),'OH + HNO3 =')==1
        k{i,1} = {'K_OH_HNO3'};
    elseif contains(Rnames(i,1),'OH + CO =')==1
        k{i,1} = {'K_OH_CO'};
    elseif contains(Rnames(i,1),'HO2 + NO2 =')==1
        k{i,1} = {'K_HO2_NO2'};
    elseif contains(Rnames(i,1),'HNO4 = HO2 + NO2')==1
        k{i,1} = {'K_HNO4'};
    elseif contains(Rnames(i,1),'HO2 + HO2 =')==1
        k{i,1} = {'K_HO2_HO2'};
    elseif contains(Rnames(i,1),'HO2 + HO2 + H2O =')==1
        k{i,1} = {'K_HO2_HO2_H2O'};
    elseif contains(Rnames(i,1),'OH + SO2 =')==1
        k{i,1} = {'K_OH_SO2'};
    elseif contains(Rnames(i,1),'MECO3 + NO2 = PAN')==1
        k{i,1} = {'K_MECO3_NO2'};
    elseif contains(Rnames(i,1),'PAN = MECO3 + NO2')==1
        k{i,1} = {'K_PAN'};
    elseif contains(Rnames(i,1),'ETHE + OH = RO2C')==1
        k{i,1} = {'K_ETHE_OH'};
    elseif contains(Rnames(i,1),'ACYE + OH = 0.7*OH')==1
        k{i,1} = {'K_ACYE_OH'};
    elseif contains(Rnames(i,1),'CL + NO2 = CLONO')==1
        k{i,1} = {'K_CL_NO2_CLONO'};
    elseif contains(Rnames(i,1),'CL + NO2 = CLNO2')==1
        k{i,1} = {'K_CL_NO2_CLNO2'};
    elseif contains(Rnames(i,1),'CLO + NO2 = CLONO2')==1
        k{i,1} = {'K_CLO_NO2'};
    elseif contains(Rnames(i,1),'CLONO2 = CLO + NO2')==1%one is photolysis one is not
        if contains(k(i,1),'JCLONO2_1')==1
            k{i,1} = k{i,1};
        else
            k{i,1} = {'K_CLONO2'};
        end
    elseif contains(Rnames(i,1),'ETHE + CL = 2*RO2C')==1
        k{i,1} = {'K_ETHE_CL'};
    elseif contains(Rnames(i,1),'ACYE + CL = HO2')==1
        k{i,1} = {'K_ACYE_CL'};
    end
end
k = k(:,1);
k = string(k);

%% -----Convert BRXX------
load('BRrate_constant.mat');%load a mat which includes all BRXX reactions' rate constants

for i = 1 : nRx
    if contains(k(i,1),'BR07')==1
        k(i,1) = BRk(7,1);
        
    elseif contains(k(i,1),'BR08')==1
        k(i,1) = BRk(8,1);
        
    elseif contains(k(i,1),'BR09')==1
        k(i,1) = BRk(9,1);
    elseif contains(k(i,1),'BR10')==1
        k(i,1) = BRk(10,1);
    elseif contains(k(i,1),'BR11')==1
        k(i,1) = BRk(11,1);
    elseif contains(k(i,1),'BR11')==1
        k(i,1) = BRk(11,1);
    elseif contains(k(i,1),'BR22')==1
        k(i,1) = BRk(22,1);
    elseif contains(k(i,1),'BR24')==1
        k(i,1) = BRk(24,1);
    elseif contains(k(i,1),'BR25')==1
        k(i,1) = BRk(25,1);
    elseif contains(k(i,1),'BR27')==1
        k(i,1) = BRk(27,1);
    elseif contains(k(i,1),'BR28')==1
        k(i,1) = BRk(28,1);
    elseif contains(k(i,1),'BR31')==1
        k(i,1) = BRk(31,1);
    end
end

%% Deal with steady state operators

% have to make more reactions for these 
% definitions from from the "SPECIAL" header at top of text file.
% also see csaprc07.pdf, page 57

% define k's and reactants for each operator
% BRk loaded in previous section
RO2NO = {BRk{7,1}   'NO'};
RO2HO2 = {BRk{8,1}  'HO2'};
RO2NO3 = {BRk{9,1}  'NO3'};
RO2RO2 = {... % all combo operators use half this value
    BRk{10,1}  'MEO2';
    BRk{11,1}  'RO2C';
    BRk{11,1}  'RO2XC';
    };
RO2RO2half = {... % all combo operators use half this value
    [BRk{10,1} '*0.5']   'MEO2';
    [BRk{11,1} '*0.5']   'RO2C';
    [BRk{11,1} '*0.5']   'RO2XC';
    };
RO2RO3 = {...
    BRk{25,1}   'MECO3';
    BRk{25,1}   'RCO3';
    BRk{25,1}   'BZCO3';
    BRk{25,1}   'MACO3';
    };
RO2RO = [RO2NO; RO2NO3; RO2RO3; RO2RO2half];
RO2XRO = [RO2HO2; RO2RO2half];
RO2RO2M = RO2RO2half;
RO22NN = [RO2NO3; RO2RO3; RO2RO2half];

% do replacements and add reactions if needed
Onames = {'RO2NO','RO2HO2','RO2NO3','RO2RO2','RO2RO3','RO2RO','RO2XRO','RO2RO2M','RO22NN'};
for i = 1:nRx
    if contains(k(i,1),Onames)
        ki = k{i,1};
        ki = erase(ki,''''); %remove extra apostrophes
        Odef = eval(ki); % operator definition
        name = Rnames{i};
        
        % remove steady state reaction
        k{i,1}=[];
        Rnames{i,1}=[];
        
        % add explicit reactions
        % note, "reactants" not consumed for these operators
        for j = 1:size(Odef,1)
            k(end+1,1) = Odef(j,1);
            Rnames{end+1,1} = [Odef{j,2} ' + ' name ' + ' Odef{j,2}];
        end
    end

end

% discard empty cells
k(cellfun(@isempty,k))=[];
Rnames(cellfun(@isempty,Rnames))=[];
nRx = size(Rnames);

%grab the new species names(some are deleted)
Snames = [];
for  i = 1 : size(Rnames)%grab all the reaction into one cell
    snames = char(Rnames(i,1));
    Snames = [Snames,snames];
end

Snames = regexp(Snames,'\<*\w*\>','match')';% grab only the species name into cells
Snames = cellfun(@mat2str,Snames,'un',0);%
[~, r, c] = unique(Snames(:,1),'stable');%delete the repeated species
Snames = Snames(r,:);
Snames = regexp(Snames,'\<*[a-zA-Z]\w*\>','match');%delete the number of mole from the reaction (A + 2B = c)delete the 2
Snames(cellfun(@isempty,Snames))=[];%delete the empty cell after removing the coefficient.
Snames = cellfun(@str2mat,Snames,'un',0);%convert it back to mat.
nSp = size(Snames,1);%number of species

%% ----------------------------CREATE REACTION BLOCK STRINGS----------------------------------------
Gstr = {}; fstr = {};
for i=1:length(Rnames)
    name = Rnames{i};
    ki = k{i};
    
    %hack up reaction
    arrow = regexp(name,'=','start'); %reactant/product divider
    rct = regexp(name(1:arrow-1),'\<*[0-9a-zA-Z.*]\w*\>','match'); %cell array of reactant names
%     prd = regexp(name(arrow+1:end),'\<*[0-9a-zA-Z][0-9a-zA-Z.*]\w*\>','match'); %cell array of product names
    
    % separate product names and stoichiometric coefficients
    fprd = split(name(arrow+1:end),'+');
    fprd = strtrim(fprd); %remove white space
    coef = cell(size(fprd));
    prd = cell(size(fprd));
    for m = 1:length(fprd)
        segments = split(fprd{m},'*');
        if length(segments)==1
            coef{m} = '1';
            prd{m} = segments{1};
        else
            coef{m} = segments{1};
            prd{m} = segments{2};
        end
    end
        
    %delete M from the f string since it is constant
    % also add M to rate coefficient 20200421 GMW
    for m = 1: length(rct)
        if rct{m}=='M'
            rct{m}=[];
            ki = [ki '.*M'];
        end
    end
    
    for m = 1: length(prd)
        if prd{m}=='M'
            prd{m}=[];
        end
    end
    
    %delete O2 from the f string since it is constant
    % also add 0.21*M to rate cefficient 20200421 GMW
    for m = 1: length(rct)
        if strcmp(rct{m},'O2')
            rct{m}=[];
            ki = [ki '.*0.21.*M'];
        end
    end
    
    for m = 1: length(prd)
        if strcmp(prd{m},'O2')
            prd{m}=[];
        end
    end
    
    % delete H2O from reactants and add to rate coefficient
    for m = 1:length(rct)
        if strcmp(rct{m},'H2O')
            rct{m} = [];
            ki = [ki '.*H2O'];
        end
    end
    
    % remove empties
    prd(cellfun(@isempty,prd))=[];
    rct(cellfun(@isempty,rct))=[];
    
    %build reactant multiplier string and reactant f-string
    Gstr{i}=''; fstr{i}='';
    for j=1:length(rct)
        Gstr{i} = [Gstr{i} 'Gstr{i,' num2str(j) '} = ''' rct{j} '''; '];
        fstr{i} = [fstr{i} 'f' rct{j} '(i)=f' rct{j} '(i)-1; '];
    end
    
    %build product f-string
    for j=1:length(prd)
        fstr{i} = [fstr{i} 'f' prd{j} '(i)=f' prd{j} '(i)+' coef{j} '; '];
    end
    
    % deal with J in rate constant
    if ~isempty(strfind(ki,'J'))
        name = [name(1:arrow-1) '+ hv ' name(arrow:end)];
    end
    
    Rnames{i} = name;
    k{i} = ki;
end


%% -----------------WRITE RATES SCRIPT FILE---------------------------------------------------

%Open script file
[mpath,name] = fileparts(which(SAPRC_flnm));
if nargin<2 %default is same as input MCM filename
    save_flnm = [name '.m'];
end
[fid,msg] = fopen(fullfile(mpath,save_flnm),'w');
if fid==-1
    disp('Problem opening script m-file. Message from fopen:')
    disp(msg)
    return
end

%Print header
fprintf(fid,'%s\n',['% ' save_flnm]);
fprintf(fid,'%s\n',['% generated from ' SAPRC_flnm]);
fprintf(fid,'%s\n',['% ' datestr(now,'YYYYmmdd')]);
fprintf(fid,'%s\n',['% # of species = ' num2str(length(Snames))]);
fprintf(fid,'%s\n\n',['% # of reactions = ' num2str(length(Rnames))]);

%Print species names
fprintf(fid,'%s\n','SpeciesToAdd = {...');
Snames = Snames';
for i=1:length(Snames)
    s = Snames{i};
    fprintf(fid,'%s',['''' s '''; ']);
    if rem(i,10)==0
        fprintf(fid,'%s\n','...');
    end
end
fprintf(fid,'%s\n\n','};');


%Print some code
fprintf(fid,'%s\n\n','AddSpecies');

%print reaction parameters
for i=1:length(Rnames)
    fprintf(fid,'%s\n','i=i+1;');
    fprintf(fid,'%s\n',['Rnames{i} = ''' Rnames{i} ''';']);
    fprintf(fid,'%s\n',['k(:,i) = ' k{i} ';']);
    fprintf(fid,'%s\n',Gstr{i});
    fprintf(fid,'%s\n\n',fstr{i});
end

fprintf(fid,'%s\n\n\n',['%END OF REACTION LIST']);
fclose(fid);


