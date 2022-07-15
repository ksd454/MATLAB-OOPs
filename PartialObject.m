classdef PartialObject < handle
    properties
        Name cell
        Data
    end
    methods
        function h = PartialObject(name)
            if nargin > 0
                h.Name = name;
                h.Data.a = rand(5,1);
            end
        end
        function delete(h)
            if ~isempty(h.Data)
                t = h.Data.a;
                disp(t)
            else
                disp('Data is empty');
            end
        end
    end
end