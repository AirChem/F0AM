function bigguy = superunion(varargin)
%function bigguy = superunion(varargin)
%Allows you to perform the union operation on many vectors.
%For Input, just feed it all the vectors you want to concatenate.
%not currently designed to take advantage of all of the possible outputs of
%union...
%080316 GMW

bigguy = [];
for i = 1:nargin
    x = varargin{i};
    bigguy = union(bigguy,x);
end