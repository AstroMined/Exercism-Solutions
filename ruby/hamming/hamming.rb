class Hamming
  def Hamming.compute(first, second)
    @first = first.chars
    @second = second.chars
    @distance = 0
    if @first.length != @second.length
      raise ArgumentError
    elsif first.length.zero?
      @distance
    else
      @first.each_with_index do |slice,index|
        @distance += 1 if slice != @second[index]
      end
      @distance
    end
  end
end