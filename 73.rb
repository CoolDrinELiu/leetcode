# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
  zero_indexes = []
  matrix.each_with_index do |row, row_index|
    row.each_with_index do |number, num_index|
      zero_indexes[row_index] ||= []
      zero_indexes[row_index].push num_index if number.zero?
    end
  end

  zero_indexes.each_with_index do |row, row_index|
    row.each_with_index do |num|
      next if num.nil?

      # col
      (0..(matrix.length - 1)).each do |col|
        matrix[col][num] = 0
      end

      # row
      (0..(matrix[0].length - 1)).each do |row|
        matrix[row_index][row] = 0  
      end
    end
  end

  return matrix
end

set_zeroes [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
