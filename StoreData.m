classdef StoreData
    methods(Static)
        function out = setgetVar(d)
            persistent Var;
            if nargin
                Var = d;
            end
            out = Var;
        end
    end
end