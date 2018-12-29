function validPath = GenFilePath(myPath)
% function validPath = GenFilePath(myPath)
% generates a valid full path for a file (e.g. for saving).
% INPUT, myPath, can be either
%   1) a full path (e.g. C:\data\junk.mat)
%   2) a directory (e.g. C:\data)
%   3) a filename  (e.g. junk.mat)
% If a directory is not specified, the current directory will be used.
% If a specified directory does not exist, the user will be prompted to create it.
% If a filename is not specified, the function will generate a dated folder/file using
% the GenFileName function.
%
% OUTPUT, validPath, is the full valid path including directory and filename.
%
% 20131019 GMW

%default directory
if 0
    defaultPath = cd; %use current directory as default
else
    defaultPath = mfilename('fullpath'); %use Runs subfolder as default
    defaultPath = [defaultPath(1:end-16) 'Runs'];
end

%directory
[pathstr name ext] = fileparts(myPath);
if isempty(pathstr)
    pathstr = defaultPath;
elseif ~exist(pathstr,'dir')
    disp(['CAUTION: Save directory ' pathstr ' not found.'])
    YN = input('Make new directory? (y/n) [y]:','s');
    if strcmp(YN,'n')
        pathstr = defaultPath;
        disp(['Have it your way. Using default path of ' defaultPath])
    else
        mkdir(pathstr);
    end
end

%name
if isempty(name)
    validPath = GenFileName(pathstr);
else
    validPath = fullfile(pathstr,[name ext]);
end


