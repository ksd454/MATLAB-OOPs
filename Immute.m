classdef Immute
    properties(SetAccess = protected)
        ImmuteProp
    end
    methods
        function obj = Immute
            obj.ImmuteProp = date;
        end
        function obj = changeprop(obj, v)
            obj.ImmuteProp = v;
        end
    end
    
end
