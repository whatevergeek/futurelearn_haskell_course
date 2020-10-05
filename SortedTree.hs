module SortedTree where

data Tree = Leaf | Node Int Tree Tree deriving (Show)

treeDepth :: Tree -> Int
treeDepth Leaf = 0
treeDepth (Node _ leftSubtree rightSubtree) =
  1 + max (treeDepth leftSubtree) (treeDepth rightSubtree)

isSortedTree :: Tree -> Int -> Int -> Bool
isSortedTree Leaf _ _ = True
isSortedTree (Node x leftSubtree rightSubtree) minVal maxVal =
  x >= minVal && x < maxVal && leftSorted && rightSorted
  where
    leftSorted = isSortedTree leftSubtree minVal x
    rightSorted = isSortedTree rightSubtree x maxVal

addNewMax :: Tree -> Tree
-- add a new max element to tree
addNewMax Leaf = Node 0 Leaf Leaf
addNewMax (Node x t1 Leaf) = Node x t1 (Node (x + 1) Leaf Leaf) -- this is the rightmost node
addNewMax (Node x t1 t2) = Node x t1 (addNewMax t2) -- intermediate node, go down right subtree

-- Bonus exercise #1: write a function to insert a value into a Tree in order
-- Bonus exercise #2: write a function to convert a Tree into a list 