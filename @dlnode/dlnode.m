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
        function insertAfter(newN, nBefore)
            removeNode(newN);
            newN.Next = nBefore.Next;
            newN.Prev = nBefore;
            if ~isempty(newN.Next)
                nBefore.Next.Prev = newN;
            end
            nBefore.Next = newN;
        end
        function insertBefore(newN, nAfter)
            removeNode(newN);
            newN.Next = nAfter;
            newN.Prev = nAfter.Prev;
            if ~isempty(newN.Prev)
                nAfter.Prev.Next = newN;
            end
            nAfter.Prev = newN;
        end
        function removeNode(n)
            if ~isscalar(n)
                error('Nodes must be scalar')
            end
            pNode = n.Prev;
            nNode = n.Next;
            if ~isempty(pNode)
                pNode.Next =  nNode;
            end
            if ~isempty(nNode)
                pNode.Prev = pNode;
            end
            n.Next = dlnode.empty;
            n.Prev = dlnode.empty;
        end
        function clearList(n)
            prev = n.Prev;
            next = n.Next;
            removeNode(n)
            while ~isempty(next)
                n = next;
                next = n.Next;
                removeNode(n)
            end
            while ~isempty(prev)
                n = prev;
                prev = n.Prev;
                removeNode(n)
            end
        end
    end
    methods(Access = private)
        function delete(node)
            clearList(node);
        end
    end
    
end