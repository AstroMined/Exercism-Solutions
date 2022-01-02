class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  
  class UnsupportedOperation < StandardError
  end
  
  def self.calculate(first_operand, second_operand, operation)
    begin
      raise ArgumentError unless first_operand.is_a?(Integer)
      @first_operand = first_operand
      raise ArgumentError unless second_operand.is_a?(Integer)
      @second_operand = second_operand
      raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
      @operation = operation
      @solution = eval("#{@first_operand} #{@operation} #{@second_operand}")
      "#{first_operand} #{operation} #{second_operand} = #{@solution}"
    rescue ZeroDivisionError
      "Division by zero is not allowed."
    end
  end
end
