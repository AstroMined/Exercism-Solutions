=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end
class Matrix
    def initialize(input)
        @input = input
    end

    def rows
        @rows = @input.split("\n")
        @rows.each_with_index do |value,index|
            @values = value.split(' ')
            @values.each_with_index do |inner_value,inner_index|
                @values[inner_index] = inner_value.to_i
            end
            @rows[index] = @values
        end
        @rows
    end
    
    def columns
        @rows = @input.split("\n")
        @rows.each_with_index do |value,index|
            @values = value.split(' ')
            @values.each_with_index do |inner_value,inner_index|
                @values[inner_index] = inner_value.to_i
            end
            @rows[index] = @values
        end
        @columns = @rows.transpose
    end
end