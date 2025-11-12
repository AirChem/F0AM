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
% 20190130 GMW  Minor change to defaultPath creation to avoid missing path errors.
% 20251105 GMW  Modified to use the F0AMpath function.

% use \Runs as default
defaultPath = fullfile(F0AMpath,'Runs');
if ~isdir(defaultPath)
    warning('GenFilePath:MissingDirectory',...
        'Cannot find \Runs\ in F0AM directory. Fret not, I fix it.')
    mkdir(defaultPath)
end

%directory
[pathstr, name, ext] = fileparts(myPath);
if isempty(pathstr)
    pathstr = defaultPath;
end

if ~exist(pathstr,'dir')
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


