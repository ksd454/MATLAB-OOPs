classdef OperatorOverloading
    properties
        X
    end
    methods
        function obj = OperatorOverloading(x)
            obj.X = x;
        end
        function obj = plus(obj1, obj2)
%             x1 = double(obj1.X);
%             x2 = double(obj2.X);
            obj = OperatorOverloading(double(obj1.X)+ double(obj2.X));
        end
        
    end
end
