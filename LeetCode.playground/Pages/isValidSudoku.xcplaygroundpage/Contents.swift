//判断一个 9x9 的数独是否有效。只需要根据以下规则，验证已经填入的数字是否有效即可。
//
//数字 1-9 在每一行只能出现一次。
//数字 1-9 在每一列只能出现一次。
//数字 1-9 在每一个以粗实线分隔的 3x3 宫内只能出现一次。

import Foundation

func isValidSudoku(_ board:[[Character]]) -> Bool{
    var rowSet = Set<Character>()
    var colSet = Set<Character>()
    
    for i in 0..<9{
        rowSet.removeAll()
        colSet.removeAll()
        for j in 0..<9{
            //行
            if board[i][j] != "."{
                if rowSet.contains(board[i][j]){
                    return false
                }
                rowSet.insert(board[i][j])
            }
            //列
            if board[j][i] != "."{
                if colSet.contains(board[j][i]) {
                    return false
                }
                colSet.insert(board[j][i])
            }
            //块
            if i % 3 == 0 && j % 3 == 0{
                if !check3X3Block(board, row: i, col: j){
                    return false
                }
            }
        }
    }
    return true
}

func check3X3Block(_ board:[[Character]],row:Int,col:Int) ->Bool{
    var blockSet = Set<Character>()
    
    for i in row..<(row+3){
        for j in col..<(col+3){
            if board[i][j] != "."{
                if blockSet.contains(board[i][j]) {
                    return false
                }
                blockSet.insert(board[i][j])
            }
        }
    }
    return true
}

let sudoku:[[Character]] = [
                ["5","3",".",".","7",".",".",".","."],
                ["6",".",".","1","9","5",".",".","."],
                [".","9","8",".",".",".",".","6","."],
                ["8",".",".",".","6",".",".",".","3"],
                ["4",".",".","8",".","3",".",".","1"],
                ["7",".",".",".","2",".",".",".","6"],
                [".","6",".",".",".",".","2","8","."],
                [".",".",".","4","1","9",".",".","5"],
                [".",".",".",".","8",".",".","7","9"]
            ]
isValidSudoku(sudoku)




