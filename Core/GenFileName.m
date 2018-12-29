function FileName = GenFileName(Dir)
% function FileName = GenFileName(Dir)
% Generates a dated and incremented file name for a .mat file.
% Input is the desired base directory.
% Output is a full filepath that looks like Dir\date\date_##.mat
%
% 20120712 GMW
% 20120904 GMW  Fixed issue with file numbering when empty directory exists.
% 20160209 GMW  Tweaked numbering to be two digits always.

if ~exist(Dir,'dir')
        mkdir(Dir)
end

%find last file and increment suffix
datenow = datestr(now,'YYYYmmdd'); %year-month-day timestamp
sdir = fullfile(Dir,datenow);
if ~isdir(sdir)
    mkdir(sdir);
    suffix = '01';
else
    allfiles = dir(fullfile(sdir,[datenow '_*.mat']));
    allsuffixes = nan(length(allfiles),1);
    for i=1:length(allfiles)
        fname = allfiles(i).name;
        allsuffixes(i) = str2num(fname(10:end-4));
    end
    suffix = num2str(max(allsuffixes)+1,'%02d'); %increment file suffix by 1
    
    if isempty(suffix)
        suffix = '01';
    end
end

FileName = fullfile(sdir,[datenow '_' suffix '.mat']);

