/*
 Given a binary tree, find its minimum depth.

 The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

 Note: A leaf is a node with no children.

 Example:

 Given binary tree [3,9,20,null,null,15,7],

 return its minimum depth = 2.

 https://leetcode.com/problems/minimum-depth-of-binary-tree/

 */


/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {

    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }

        return dfs(root, 1)
    }

    func dfs(_ node: TreeNode, _ level: Int) -> Int {

        // terminal case
        if node.left == nil && node.right == nil { return level }

        // dfs left
        if node.right == nil && node.left != nil {
            return dfs(node.left!, level+1)
        }
        // dfs right
        if node.left == nil && node.right != nil {
            return dfs(node.right!, level+1)
        }

        // dfs both sides
        var ll = level
        var lr = level

        if let left = node.left { ll = dfs(left, level+1) }
        if let right = node.right { lr = dfs(right, level+1) }

        return min(ll, lr)
    }
}
