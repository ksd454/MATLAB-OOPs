classdef dlnode < handle
    properties
        Data
    end
    properties(SetAccess = private)
        Next = dlnode.empty
        Prev = dlnode.empty
    end
    methods
        function node = dlnode(Data)
            if nargin > 0
                node.Data = Data;
            end
        end
    end
end