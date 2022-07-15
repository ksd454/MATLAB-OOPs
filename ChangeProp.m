classdef ChangeProp < Immute
    properties
        PropInChange
    end
    methods
        function obj = changeimmute(obj, val)
            obj.ImmuteProp = val;
        end
    end
end