import Foundation
import XCTest

class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        
        guard matrix.count > 0,
            matrix[0].count > 0 else {
            return []
        }
        
        let col = matrix[0].count
        let row = matrix.count
        
        var spiral = [Int]()

        var r = 0, c = 0
        
        while (r < (row + 1) / 2) && (c < (col + 1) / 2) {
            //top
            for i in c ..< col - c {
                spiral.append(matrix[r][i])
            }
            
            //right
            for i in r + 1 ..< row - r {
                spiral.append(matrix[i][col - c - 1])
            }
            //bottom
            var i = col - c - 2
            while row - r - 1 > r && i >= c {
                spiral.append(matrix[row - r - 1][i])
                i -= 1
            }
            //left
            i = row - r - 2
            while (col - c - 1 > c && i > r) {
                spiral.append(matrix[i][c])
                i -= 1
            }

            r += 1
            c += 1
        }
        
        return spiral
    }
}

let s = Solution()

s.spiralOrder([])

s.spiralOrder([[1,2,3],
               [4,5,6],
               [7,8,9]])

s.spiralOrder([[1,2,3,4],
               [5,6,7,8],
               [9,10,11,12]])
