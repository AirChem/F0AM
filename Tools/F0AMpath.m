function p = F0AMpath();
% function p = F0AMpath();
% Returns the root path of the F0AM folder.
% If a user changes the directory structure of the F0AM files, madness may ensue.
% 20251105 GMW

p = mfilename('fullpath');

p = p(1 : end-14); %assumes this function is in \Tools