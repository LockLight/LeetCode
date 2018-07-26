//给定一个 n × n 的二维矩阵表示一个图像。
//将图像顺时针旋转 90 度。
//说明：
//你必须在原地旋转图像，这意味着你需要直接修改输入的二维矩阵。请不要使用另一个矩阵来旋转图像。
//示例 1:
//给定 matrix =
//[
//[1,2,3],
//[4,5,6],
//[7,8,9]
//],
//
//原地旋转输入矩阵，使其变为:
//[
//[7,4,1],
//[8,5,2],
//[9,6,3]
//]

//1  2  3　　　 　　 1  4  7　　　　　  7  4  1
//
//4  5  6　　-->　　 2  5  8　　 -->  　  8  5  2
//
//7  8  9 　　　 　　3  6  9　　　　      9  6  3

import Foundation

func rotate(_ matrix:inout [[Int]]){
//    for i in 0..<matrix.count{
//        for j in (i+1)..<matrix.count{
//            let temp = matrix[i][j]
//            matrix[i][j] = matrix[j][i]
//            matrix[j][i] = temp
//        }
//        matrix[i].reverse()
//    }
    let temp = matrix
    
    let rows = matrix.count
    let cols = rows
    
    let maxRows = rows - 1
    let maxCols = maxRows
    
    for i in 0..<rows{ 
        for j in 0..<cols{
            matrix[j][maxRows-i] = temp[i][j]
        }
    }
}

var array:[[Int]] = [
                        [1,2,3],
                        [4,5,6],
                        [7,8,9]
                    ]
rotate(&array)
