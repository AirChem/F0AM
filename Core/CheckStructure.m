function Sout = CheckStructure(Sin,FieldInfo,ignorePrefix)
% function Sout = CheckStructure(Sin,FieldInfo,ignorePrefix)
% Checks the fields in a structure for the following:
% 1) all fields in the structure are valid
% 2) any required fields (based on the application) are present
% 3) assignment of default values if needed.
% If tests 1 or 2 fail, an error is returned.
%
% INPUTS:
% Sin: a structure containing fields to check.
% FieldInfo: A cell array containing info for all fields.
%   Has three columns, with one row for each field to check:
%   1) Names: strings containing all valid field names.
%   2) Required/Optional: Flag for whether variable is required (1) or optional (0)
%   3) Default Values: Default values for any optional fields.
% ignorePrefix: optional input specifying a prefix for ignored fields.
%               any fields in Sin starting with this prefix will not be sujected to checks.
%
% OUTPUTS:
% Sout: a revised structure.
%
% 20121130 GMW
% 20130426 GMW  Modified to accept single cell array input.
% 20131022 GMW  Commented out "Valid field" checking to accomodate J-values in Met.
% 20150602 GMW  Added "valid field" code back in and added the "ignorePrefix" option to deal with
%               optional J-value inputs.

%Parse inputs
Sname       = inputname(1);
Sfields     = fieldnames(Sin);
ValidFields = FieldInfo(:,1);
Required    = logical(cell2mat(FieldInfo(:,2)));
Defaults    = FieldInfo(:,3);

%ignore fields if desired
if nargin==3
    j = strncmp(ignorePrefix,Sfields,length(ignorePrefix));
    Sfields(j)=[];
end

%check for valid fields
check = ismember(Sfields,ValidFields);
if any(~check)
    Bad = cellstr2str(Sfields(~check));
    error(['CheckStructure: Field(s) "' Bad '" in structure "' Sname '" not valid.'...
        ' Valid fields are: ' cellstr2str(ValidFields) '.'])
end

%check for required fields
RequiredFields = ValidFields(Required);
if ~isempty(RequiredFields)
        check = ismember(RequiredFields,Sfields);
    if any(~check)
        Bad = cellstr2str(RequiredFields(~check));
        error(['CheckStructure: Required field(s) "' Bad '" in structure "' Sname '" not found.'...
            ' Required fields are: ' cellstr2str(RequiredFields) '.'])
    end
end

%assign default
Sout = Sin;
OptionalFields = ValidFields(~Required);
Defaults = Defaults(~Required);
check = ismember(OptionalFields,Sfields);
missing = find(~check); %index for missing fields
for i=1:length(missing)
    Sout.(OptionalFields{missing(i)}) = Defaults{missing(i)};
end


