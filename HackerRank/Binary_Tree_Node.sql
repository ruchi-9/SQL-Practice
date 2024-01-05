SElect n,
case when p is null then 'Root'
when n not in (Select distinct p from BST where p is not null) then 'Leaf'
else 'Inner'
End as node
from BST order by n;
