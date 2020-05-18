function [Met_int,InitConc_int,BkgdConc_int] = ...
    InputInterp(Met,InitConc,BkgdConc,Time,Time_int,circularFlag)
% function [Met_int,InitConc_int,BkgdConc_int] = ...
%    InputInterp(Met,InitConc,BkgdConc,nRep)
% Interpolates inputs for F0AM. 
% Useful if, for example, you have hourly observations but want the model to update every 10 minutes.
% Currently, interpolation operates only on non-scalar numeric values.
% Default interpolation method is linear.
%
% Extrapolation is not allowed. Time_int must be within the limits of Time.
% 
% A special case is a diurnal cycle that is (conceptually) meant to repeat.
% In this case, specifying the "circularFlag" input will allow for interpolate between the last and
% first points of input "Time." So, if Time = 0:23 and Time_int = 0:0.5:23.5, then the output point
% at 23.5 will be determined by interpolated between Time = 23 and Time = 0 (by adding one point to
% the end of Time).
% 
% INPUTS
% Met, InitConc, BkgdConc: F0AM inputs. See any F0AM example for format.
% Time: native timebase of inputs.
% Time_int: timebase to interpolate to. 
% circularFlag: optional flag indicating that timebase is circular.
%
% OUTPUTS
% Met_int, InitConc_int, BkgdConc_int: just like inputs, except with all cell array values
% interpolated.
%
% 20200414 GMW
% 20200515 GMW Fixed problem with interpolation/extrapolation for circular case

if nargin<6, circularFlag = 0; end

if ~circularFlag
    assert(min(Time_int) >= min(Time),'InputInterp:TimeBounds','Extrapolation not allowed. min(Time_int) must be >= min(Time).')
    assert(max(Time_int) <= max(Time),'InputInterp:TimeBounds','Extraploation not allowed. max(Time_int) must be <= max(Time).')
end

if circularFlag
    dT = median(diff(Time));
    Time = [Time(1)-dT; Time(:); Time(end)+dT];
end

Met_int = interpCells(Met);
InitConc_int = interpCells(InitConc);
BkgdConc_int = interpCells(BkgdConc);

% helper function doing the actual work
    function X_int = interpCells(X)
        N = size(X,1);
        X_int = X;
        for i = 1:N
            x = X{i,2};
            if isnumeric(x) && ~isscalar(x)
                
                if circularFlag
                    x = [x(end); x(:); x(1)];
                end
                
                X_int{i,2} = interp1(Time,x(:),Time_int,'linear');
            end
        end
    end

end

