# @param {Character[][]} board
# @return {Boolean}
AREA = [
  [1,1,1,2,2,2,3,3,3],
  [1,1,1,2,2,2,3,3,3],
  [1,1,1,2,2,2,3,3,3],
  [4,4,4,5,5,5,6,6,6],
  [4,4,4,5,5,5,6,6,6],
  [4,4,4,5,5,5,6,6,6],
  [7,7,7,8,8,8,9,9,9],
  [7,7,7,8,8,8,9,9,9],
  [7,7,7,8,8,8,9,9,9],
]
def is_valid_sudoku(board)
  row = []
  col = []
  area = []
  board.each_with_index do |r, row_index|
    r.each_with_index do |ele, col_index|
      next if ele == "."
      row[row_index] ||= {}
      col[col_index] ||= {}
      k = AREA[row_index][col_index]
      area[k] ||= {}
      return false if row[row_index][ele] || col[col_index][ele] || area[k][ele]
      row[row_index][ele] = true
      col[col_index][ele] = true
      area[k][ele] = true
    end
  end
  return true
end




board = [["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]
is_valid_sudoku board