function meter(n,i,increment)
% function meter(n,i)
% this function is handy for tracking the completion of a for or while loop. 
% INPUTS: 
% n is the total size of the loop (i.e. the number of steps).
% i is the current index of the loop.
% increment is the percentage increment to display (optional, default is 10).
%
% USE EXAMPLE:
% for i=1:n
%    meter(n,i);
%    etc.
% 
% 20060725 GMW
% 20120216 GMW Updated and improved with new Ph.D. powers.
% 20131025 GMW Further updated to allow multiple calls...

if nargin<3, increment=10; end

% New code . . . currently fails if i is not an integer
% Now = fix(100.*i./n);
% Next = fix(100.*(i+1)./n);
% 
% if floor(Now/increment)~=floor(Next/increment) %detect transition
%     inc = ceil(Now/increment)*increment;
%     disp([num2str(inc) '% done']);
% end

%old code, abolished 20131025
Now = fix(100.*i./n);
persistent LAST
if isempty(LAST) || Now<increment
    LAST = 0;
end
Next = LAST + increment;

if Now>=Next
    LAST = Next;
    disp([num2str(LAST) '% done']);
end


