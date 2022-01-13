
class Matrix
  attr_reader :rows

  def initialize(input)
    @input = input
    @rows = @input.split("\n")
    @rows.each_with_index do |value, index|
      @values = value.split(' ')
      @values.each_with_index do |inner_value, inner_index|
        @values[inner_index] = inner_value.to_i
      end
      @rows[index] = @values
    end
  end

  def columns
    @columns = @rows.transpose
  end
end
