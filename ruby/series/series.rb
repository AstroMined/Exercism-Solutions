=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end
class Series
    def initialize(input)
        @input = input
    end

    def slices(slice_size)
        @slice_size = slice_size

        if @slice_size <= @input.split("").to_a.length()
            @slices = @input.split("").each_cons(@slice_size).to_a
            @slices.each_with_index do |slice,index|
                @slices[index] = slice.join('')
            end
            @slices
        else
            raise ArgumentError
        end
    end
end
