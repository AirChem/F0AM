 function EQN2F0AM(GEOSCHEM_flnm,save_flnm)
 %  function EQN2F0AM(GEOSCHEM_flnm,save_flnm)
 % Converts GEOSChem .eqn files to F0AM mechanism file.
 %
 % 20200426 Xiangyu Liu
 
 warning(['EQN2F0AM has only been validated to work with the standard.eqn file of GEOSChem v12.07. '...
     'Please confirm accurate translation between .eqn and .m files, '...
     'particularly assignment of photolysis frequencies as found in FJX_j2j.dat.'])


%% EXTRACT SPECIES, REACTIONS AND RATE CONSTANTS 

fid=fopen(GEOSCHEM_flnm);

l = fgetl(fid);
%scrol the file until get to the variable line
while ~strncmp(l,'#DEFVAR',7)
    l=fgetl(fid);
end
%grab species names
Snames = []; 
l=fgetl(fid);
l=fgetl(fid);
while ~isempty(l)
    SplitS = regexp(l,'\<*\w*\>','match');
    Specie=SplitS(:,1);
    Snames = [Snames Specie];
    l = fgetl(fid);
end
l=fgetl(fid);
l=fgetl(fid);
l=fgetl(fid);
%get the fix species name
Fix=[];
while ~isempty(l)
    SplitF = regexp(l,'\<*\w*\>','match');
    SpecieF=SplitF(:,1);
    Fix = [Fix SpecieF];
    l = fgetl(fid);
end
Snames=[Snames Fix];% put the fixed species into the species to add
i = ismember(Snames,{'N2','O2','H2O'});
Snames(i) = []; %remove N2, O2, H2O from species list
l=fgetl(fid);
l=fgetl(fid);
l=fgetl(fid);
l=fgetl(fid);

%get the reactions and species number
rstart = ftell(fid)-length(l)-1; 
nSp=size(Snames,2);
nRx=0;
while feof(fid)~=1
    l=fgetl(fid);
        if contains(l,';')==1
            nRx=nRx+1;
        end
end
fseek(fid,rstart,'bof');
k = cell(nRx,1);
Rnames = cell(nRx,1);

%grab the reaction rate form and constants
for i=1:nRx
    l = fgetl(fid);
    while l(1)=='/'
    l = fgetl(fid);
    end
    while (l(end)~=';')&&(l(end)~='}')
        l = [l fgetl(fid)]; 
    end
    s = regexp(l,':','start');
    Rnames{i}= l(1:s-2);
    n=regexp(l,';');
    
    k{i}= strtrim(l(s+2:n(1)));
end
fclose(fid);

%% TRANSFORM RATE CONSTANS INTO THE RATE EQUATION

k = strrep(k,'TEMP','T');
k = strrep(k,'_dp','.');
del=[];
print=[];
% just include the rate form in the gckpp_Rates.F90 file
for i=1:nRx
        a=regexp(k{i},'(');
        b=regexp(k{i},',');
        
    if strncmp(k{i},'GCARR',5)
        
        % changed to use the GCARR function, 20200426 GMW
        k{i} = insertAfter(k{i},'(','T, '); % add temperature input
        k{i} = strrep(k{i},'*NUMDEN','.*M');
        k{i} = erase(k{i},';');
        
%         if contains(k{i},'*NUMDEN')==1
%             k{i}=[k{i}(a+1:b(1)-1),'.*exp(',k{i}(b(2)+2:end-10),'./T).*M'];
%         else
%             k{i}=[k{i}(a+1:b(1)-1),'.*exp(',k{i}(b(2)+2:end-3),'/T)'];
%         end
        
    elseif strncmp(k{i},'GCJPLPR',7)
        A0=str2double(k{i}(a+1:b(1)-1));
        B0=str2double(k{i}(b(1)+1:b(2)-1));
        C0=str2double(k{i}(b(2)+1:b(3)-1));
        A1=str2double(k{i}(b(3)+1:b(4)-1));
        B1=str2double(k{i}(b(4)+1:b(5)-1));
        C1=str2double(k{i}(b(5)+1:b(6)-1));
        FV=str2double(k{i}(b(6)+1:b(7)-1));
        FCT1=str2double(k{i}(b(7)+1:b(8)-1));
        FCT2=str2double(k{i}(b(8)+1:end-2));
        RLOW=[num2str(A0),'.*exp(',num2str(C0),'./T).*(300./T).^(',num2str(B0),').*M'];
        RHIGH=[num2str(A1),'.*exp(',num2str(C1),'./T).*(300./T).^(',num2str(B1),')'];
        XYRAT=[num2str(A0/A1),'.*exp(',num2str(C0-C1),'./T).*(300./T).^(',num2str(B0-B1),').*M'];
        BLOG=['log10(',XYRAT,')'];
        FEXP=['1./(1+(',BLOG,').*(',BLOG,'))'];
        
        if (FCT1==0)&&(FCT2==0)
            FCT=num2str(FV);
        elseif (FCT2==0)
            FCT=['exp(-T./',num2str(FCT2),')'];
        elseif (FCT1==0)
            FCT=['exp(-T./',num2str(FCT1),')'];
        else
            FCT=['exp(-T./',num2str(FCT2),')+exp(-T./',num2str(FCT1),')'];
        end
         k{i}=[RLOW,'.*',FCT,'.^(',FEXP,')./(1+',XYRAT,')'];
         
    elseif strncmp(k{i},'GC_HO2HO2',9)
        k{i}='K_HO2_HO2';
        
    elseif strncmp(k{i},'GC_OHCO',7)
        k{i}='K_OH_CO';
        
    elseif strncmp(k{i},'GC_RO2NO',8)
        B=k{i}(a+1:b(1)-1);
        A0=str2double(k{i}(b(1)+1:b(2)-1));
        B0=str2double(k{i}(b(2)+1:b(3)-1));
        C0=str2double(k{i}(b(3)+1:b(4)-1));
        A1=str2double(k{i}(b(4)+1:b(5)-1));
        B1=str2double(k{i}(b(5)+1:b(6)-1));
        C1=str2double(k{i}(b(6)+1:end-2));
        Y300 = num2str(0.826);
        ALPHA= num2str(1.94e-22);
        BETA = num2str(0.97);
        XM0  = num2str(0);
        XMINF= num2str(8.1);
        XF   = num2str(0.411);
        R0=[num2str(A0),'.*exp(',num2str(C0),'./T).*(300./T).^(',num2str(B0),')'];
        R1=[num2str(A1),'.*exp(',num2str(C1),'./T).*(300./T).^(',num2str(B1),')'];
        
        if (A1==1)
           FYRNO3 = num2str(3.0e-4);
        else
            XXYN=[ALPHA,'.*exp(',BETA,'.*',R1,').*M'];
            YYYN=[Y300,'.*(300./T).^',XMINF];
            AAA=['log10(',XXYN,'./(',YYYN,'))'];
            ZZYN=['1./(1+(',AAA,').^2)'];
            RARB=['(' XXYN './(1+(' XXYN './(' YYYN ')))).*' XF '.^(' ZZYN ')'];
            FYRNO3=[RARB,'./(1+',RARB,')'];
        end
        
        if strncmp(B,"'A'",3)
            k{i}=[R0,'.*',FYRNO3];
        else 
            k{i}=[R0,'.*(1-',FYRNO3,')'];
        end
        
    elseif strncmp(k{i},'GC_TBRANCH',10)
        A0=str2double(k{i}(a+1:b(1)-1));
        B0=str2double(k{i}(b(1)+1:b(2)-1));
        C0=str2double(k{i}(b(2)+1:b(3)-1));
        A1=str2double(k{i}(b(3)+1:b(4)-1));
        B1=str2double(k{i}(b(4)+1:b(5)-1));
        C1=str2double(k{i}(b(5)+1:end-2));
        R0=[num2str(A0),'.*exp(',num2str(C0),'./T).*(300./T).^(',num2str(B0),')'];
        R1=[num2str(A1),'.*exp(',num2str(C1),'./T).*(300./T).^(',num2str(B1),')'];
        k{i}=[R0,'./(1+',R1,')'];
        
    elseif strncmp(k{i},'GC_OHHNO3',9)
        k{i}='K_OH_HNO3';
        
    elseif strncmp(k{i},'GCJPLEQ',7)
        A0=str2double(k{i}(a+1:b(1)-1));
        B0=str2double(k{i}(b(1)+1:b(2)-1));
        C0=str2double(k{i}(b(2)+1:b(3)-1));
        R0=[num2str(A0),'.*exp(',num2str(C0),'./T).*(300./T).^(',num2str(B0),')'];
        
        if size(b,2)==5
            A1=str2double(k{i}(b(3)+1:b(4)-1));
            B1=str2double(k{i}(b(4)+1:b(5)-1));
            C1=str2double(k{i}(b(5)+1:end-2));
            R1=[num2str(A1),'.*exp(',num2str(C1),'./T).*(300./T).^(',num2str(B1),')'];
            
        elseif size(b,2)==11
            A1=str2double(k{i}(b(3)+1:b(4)-1));
            B1=str2double(k{i}(b(4)+1:b(5)-1));
            C1=str2double(k{i}(b(5)+1:b(6)-1));
            A2=str2double(k{i}(b(6)+1:b(7)-1));
            B2=str2double(k{i}(b(7)+1:b(8)-1));
            C2=str2double(k{i}(b(8)+1:b(9)-1));
            FV=str2double(k{i}(b(9)+1:b(10)-1));
            FCT1=str2double(k{i}(b(10)+1:b(11)-1));
            FCT2=str2double(k{i}(b(11)+1:end-2));
            RLOW=[num2str(A1),'.*exp(',num2str(C1),'./T).*(300./T).^(',num2str(B1),').*M'];
            RHIGH=[num2str(A2),'.*exp(',num2str(C2),'./T).*(300./T).^(',num2str(B2),')'];
            XYRAT=[num2str(A1/A2),'.*exp(',num2str(C1-C2),'./T).*(300./T).^(',num2str(B1-B2),').*M'];
            BLOG=['log10(',XYRAT,')'];
            FEXP=['1./(1+(',BLOG,').*(',BLOG,'))'];
            
            if (FCT1==0)&&(FCT2==0)
                FCT=num2str(FV);
            elseif (FCT2==0)
                FCT=['exp(-T./',num2str(FCT2),')'];
            elseif (FCT1==0)
            FCT=['exp(-T./',num2str(FCT1),')'];
            else
                FCT=['exp(-T./',num2str(FCT2),')+exp(-T./',num2str(FCT1),')'];
            end
            
            R1=[RLOW,'.*',FCT,'.^(',FEXP,')./(1+',XYRAT,')'];
        else
            fprintf('GCJPLEQ:Missing parameters for P-dependent reaction "%s"',Rnames{i})
            k{i}='0';
            
        end
        k{i}=[R1,'./(',R0,')'];
        
    elseif strncmp(k{i},'GC_RO2HO2',9)
        A0=str2double(k{i}(a+1:b(1)-1));
        B0=str2double(k{i}(b(1)+1:b(2)-1));
        C0=str2double(k{i}(b(2)+1:b(3)-1));
        A1=str2double(k{i}(b(3)+1:b(4)-1));
        B1=str2double(k{i}(b(4)+1:b(5)-1));
        C1=str2double(k{i}(b(5)+1:end-2));
        R0=[num2str(A0),'.*exp(',num2str(C0),'./T).*(300./T).^(',num2str(B0),')'];
        R1=[num2str(A1),'.*exp(',num2str(C1),'./T).*(300./T).^(',num2str(B1),')'];
        k{i}=[R0,'.*(1-exp(-0.245.*',R1,'))'];
        
    elseif strncmp(k{i},'GC_DMSOH',8)
        A0=str2double(k{i}(a+1:b(1)-1));
        B0=str2double(k{i}(b(1)+1:b(2)-1));
        C0=str2double(k{i}(b(2)+1:b(3)-1));
        A1=str2double(k{i}(b(3)+1:b(4)-1));
        B1=str2double(k{i}(b(4)+1:b(5)-1));
        C1=str2double(k{i}(b(5)+1:end-2));
        R0=[num2str(A0),'.*exp(',num2str(C0),'./T).*(300./T).^(',num2str(B0),')'];
        R1=[num2str(A1),'.*exp(',num2str(C1),'./T).*(300./T).^(',num2str(B1),')'];
        k{i}=['(M.*0.2095.*' R0 ')./(1+0.2095.*' R1 ')'];
        
    elseif strncmp(k{i},'GC_GLYCOHA',10)
        A0=str2double(k{i}(a+1:b(1)-1));
        B0=str2double(k{i}(b(1)+1:b(2)-1));
        C0=str2double(k{i}(b(2)+1:end-2));
        R0=[num2str(A0),'.*exp(',num2str(C0),'./T).*(300./T).^(',num2str(B0),')'];
        GLYC_FRAC='1-11.0729*exp((-1/73).*T)';
        k{i}=[R0,'.*(',GLYC_FRAC,')'];
        
    elseif strncmp(k{i},'GC_GLYCOHB',10)
        A0=str2double(k{i}(a+1:b(1)-1));
        B0=str2double(k{i}(b(1)+1:b(2)-1));
        C0=str2double(k{i}(b(2)+1:end-2));
        R0=[num2str(A0),'.*exp(',num2str(C0),'./T).*(300./T).^(',num2str(B0),')'];
        GLYC_FRAC='1-11.0729.*exp((-1/73).*T)';
        k{i}=[R0,'.*(1-(',GLYC_FRAC,'))'];
        
    elseif strncmp(k{i},'GC_GLYXNO3',10)
        O2='0.2095.*M';
        A0=str2double(k{i}(a+1:b(1)-1));
        B0=str2double(k{i}(b(1)+1:b(2)-1));
        C0=str2double(k{i}(b(2)+1:end-2));
        R0=[num2str(A0),'.*exp(',num2str(C0),'./T).*(300./T).^(',num2str(B0),')'];
        k{i}=[R0,'.*(',O2,'+3.5e18)./(2.*',O2,'+3.5e18)'];
        
    elseif strncmp(k{i},'GC_HACOHA',9)
        A0=str2double(k{i}(a+1:b(1)-1));
        B0=str2double(k{i}(b(1)+1:b(2)-1));
        C0=str2double(k{i}(b(2)+1:end-2));
        R0=[num2str(A0),'.*exp(',num2str(C0),'./T).*(300./T).^(',num2str(B0),')'];
        HAC_FRAC='1-23.7.*exp((-1/60).*T)';%T must >=190K
        k{i}=[R0,'.*(',HAC_FRAC,')'];
        
    elseif strncmp(k{i},'GC_HACOHB',9)%T must >=190K
        A0=str2double(k{i}(a+1:b(1)-1));
        B0=str2double(k{i}(b(1)+1:b(2)-1));
        C0=str2double(k{i}(b(2)+1:end-2));
        R0=[num2str(A0),'.*exp(',num2str(C0),'./T).*(300./T).^(',num2str(B0),')'];
        HAC_FRAC='1-23.7.*exp((-1/60).*T)';%T must >=190K
        k{i}=[R0,'.*(1-(',HAC_FRAC,'))'];
        
    elseif strncmp(k{i},'HET',3) % delete all the Heterogeneous reactions
        del=[del,i];
        
    elseif contains(k{i},'PHOTOL')
        
        % get Photolysis number
        Pnum = regexp(k{i},'\d*','match');
        Pnum = str2num(Pnum{1});
        
        % list definitions
        % NOTE, assignments for reaction ID#'s likely differ b/w each GEOS_CHEM version!
        Jdef = {
            2   'JO3P'
            3   'JO1D'
            7   'JHCHO_HO2'
            8   'JHCHO_H2'
            9   'JH2O2'
            10  'JMP'
            11  'JNO2'
            12  'JNO3_NO2'
            13  'JNO3_NO'
            14  'JN2O5_NO2'
            15  'JHONO'
            16  'JHNO3'
            17  'JHNO4_OH'  % Jn22
            18  'JHNO4_HO2' % Jn21
            19  'JClNO3_Cl' %Jn34
            20  'JClNO3_ClO'%Jn35
            21  'JClNO2'    %Jn23
            22  'JCl2'      %Jn32
            23  'JBr2'
            24  'JHOCl'     %Jn36
            25  'JOClO'     %Jn37
            26  'JCl2O2'    %Jn38
            27  'JClO'      %Jn33
            28  'JBrO'
            29  'JBrNO3_Br'
            30  'JBrNO3_BrO'
            31  'JBrNO2'
            32  'JHOBr'
            33  'JBrCl'     %Jn31
            56  'JCHBr3'
            59  'JPAN'
            61  'JALD2a'
            62  'JALD2b'
            63  'JMVK*0.6'
            64  'JMVK*0.2'
            65  'JMVK*0.2'
            66  'JMACR'
            68  'JGLYC'
            69  'JMEK'
            70  'JRCHO'
            71  'JMGLY'
            72  'JGLYXa'
            73  'JGLYXb'
            74  'JGLYXc'
            75  'JHAC*0.6'
            76  'JACETa'
            77  'JACETb'
            78  'JMP'
            79  'JMP'
            80  'JMP*0.5'
            81  'JMP'
            82  'JMP'
            83  'JMP'
            84  'JMP'
            85  'JMP'
            86  'JMP'
            87  'JMP'
            88  'JMP'
            89  'JMP'
            90  'JMP'
            91  'JMP'
            92  'JMACRN'
            93  'JMVKN'
            94  'JONIT1'
            95  'JMP'
            96  'JPROPNN'
            97  'JMP'
            98  'JR4N2'
            99  'JMP'
            101 'JClOO'     %Jn39
            103 'JMPN'
            104 'JMPN'
            105 'JH2O2'
            106 'JPAN'
            107 'JETHLN'
            108 'JMACR' %not sure if this should be JHPALD
            109 'JMACR' %FJX_j2j.dat says MeAcr, but this should be JHPALD
            110 'JMACR' %not sure if this should be JHPALD
            111 'JONIT1' %check QY
            112 'JONIT1' %check QY
            113 'JONIT1' %check QY
            114 'JI2'       %Jn40
            115 'JHOI'      %Jn41
            116 'JIO'       %Jn42
            117 'JOIO'      %Jn43
            118 'JINO'      %Jn44
            119 'JIONO'     %Jn45
            120 'JIONO2'    %Jn46
            121 'JI2O2'     %Jn47
            126 'JI2O4'     %Jn48
            127 'JI2O3'     %Jn49
            128 'JIBr'      %Jn51
            129 'JICl'      %Jn50
            134 'JMENO3'
            135 'JETNO3'
            136 'JIPRNO3'
            137 'JNPRNO3'
            };
        Jnum = cell2mat(Jdef(:,1));

        j = find(Jnum==Pnum);
        if ~isempty(j)
            k{i} = Jdef{j,2};
%             disp([k{i} ' ' Rnames{i}]) %uncomment this to check J-value translations
        else
            del=[del,i];%delete the reations that are not in GEOSCHEM_AllRxn file and display on the command Window
             printi=['Photolysis reaction #' num2str(Pnum) ', "',Rnames{i},'", in the KPP file that is not included in GEOSCHEM_J.m. Please check and add the reaction by yourself!\n'];
             fprintf(printi);
        end
        
    elseif ~strncmp(k{i},'GC',2)
        k{i}=k{i}(1:end-1);
        
    else
        del=[del,i];
        g=regexp(k{i},'G');%delete the reations rate forms that are not in gckpp_Rates.F90 file and display on the command Window
        printi=['Rate form"',k{i}(g:a-1),'"of reaction"',Rnames{i},'"does not show in the gckpp_Rate file. Please check and add the reaction by yourself!\n'];
        fprintf(printi);
    end
    
end
k_del = k(del); %store
Rnames_del = Rnames(del);
k(del)=[];%delete the rate constants
Rnames(del)=[];%delete the reactions
nRx=nRx-size(del,2);%change the reaction number

%% CHANGE THE RATE EQUATION INTO F0AM USEABLE FORM

for i=1:length(Rnames)
    name = Rnames{i};
    ki = k{i};
    rawS=[];
   
    %grab the products
    eqn = regexp(name,'=','start'); 
    rhs=name(eqn+2:end);
    bracketl=regexp(rhs,'{','start');
    if ~isempty(bracketl)
        rhs=rhs(1:bracketl-2);
    end

    add=regexp(rhs,'+','start');
    
    if isempty(add)
        rawS{1}=rhs(1:end);

    elseif size(add,2)==1
        rawS{1,1}=rhs(1:add-2);
        rawS{1,2}=rhs(add+2:end);
    else
        rawS{1,1}=rhs(1:add(1)-2);
        for j=1:size(add,2)-1
            rawS{1,j+1}=rhs(add(j)+2:add(j+1)-2);
        end
        rawS{1,j+2}=rhs(add(j+1)+2:end);
        
    end
    for j=1:size(rawS,2)
            while strncmp(rawS{j},' ',1) %delete the space at the front of the products
                rawS{j}=rawS{j}(2:end);
            end
    end
    
     %grab the reactants
    rct = regexp(name(1:eqn-1),'\<*[0-9a-zA-Z.*]\w*\>','match');
    
    %delete the constant species 'M'and 'O2' 
    delr=[];
    for j=1:size(rct,2)
        if (rct{:,j}=='M') 
            delr=[delr,j];
        elseif strcmp(rct{:,j},'O2') %account for O2 in k, 20200426 GMW
            ki = [ki '.*0.21.*M'];
            delr=[delr,j];
        elseif strcmp(rct{:,j},'N2') %account for N2 in k, 20200426 GMW
            ki = [ki '.*0.78.*M'];
            delr=[delr,j];
        elseif strcmp(rct{:,j},'H2O') %account for H2O in k, 20200426 GMW
            ki = [ki '.*H2O'];
            delr=[delr,j];
        end
    end
     rct(:,delr)=[];
    prd=rawS;
  
    chart=cell(length(prd),2);
    
    %seperate the coeffients and the species
    for j=1:length(prd)
        firstN=regexp(prd{1,j},'[0-9]','start');
        firstC=regexp(prd{1,j},'[A-Z]','start');
        if ~isempty(firstN)&&firstN(1)==1
           chart{j,1} = prd{1,j}(1:firstC(1)-1);
            chart{j,2} = prd{1,j}(firstC(1):end);
        else
            chart{j,1} = '1';
            chart{j,2} = prd{1,j};
        end
    end
    
    delc=[];
    for m=1:size(chart,1)
%         if strncmp(chart{m,2},'O2',2)
        if any(strcmp(chart{m,2},{'N2','O2','H2O'}))
            delc=[delc,m];
        end
    end
    chart(delc,:)=[];

    if contains(ki,'J')
        rct(:,2)=[]; % delete the 'hv'
    end
    Gstr{i}=''; fstr{i}='';
    for o=1:length(rct)
        Gstr{i} = [Gstr{i} 'Gstr{i,' num2str(o) '} = ''' rct{o} '''; '];
        fstr{i} = [fstr{i} 'f' rct{o} '(i)=f' rct{o} '(i)-1; '];
    end
    
    %build product f-string
    coef = chart(:,1)';%coefficient
    prd2=chart(:,2)';
    
    for p=1:length(prd2)
        fstr{i} = [fstr{i} 'f' prd2{p} '(i)=f' prd2{p} '(i)+' coef{p} '; '];
    end

    Rnames{i} = name;
    k{i} = ki;
end


%% -----------------WRITE RATES SCRIPT FILE---------------------------------------------------

%Open script file
[mpath,name] = fileparts(which(GEOSCHEM_flnm));
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
fprintf(fid,'%s\n',['% generated from ' GEOSCHEM_flnm]);
fprintf(fid,'%s\n',['% ' datestr(now,'YYYYmmdd')]);
fprintf(fid,'%s\n',['% # of species = ' num2str(length(Snames))]);
fprintf(fid,'%s\n\n',['% # of reactions = ' num2str(length(Rnames))]);

%Print excluded reactions
fprintf(fid,'%s\n','% REACTIONS EXCLUDED FROM MECHANISM:');
for i = 1:length(Rnames_del)
    fprintf(fid,'%s\n',['% ' Rnames_del{i} ' : ' k_del{i}]);
end
fprintf(fid,'\n');

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
 end


