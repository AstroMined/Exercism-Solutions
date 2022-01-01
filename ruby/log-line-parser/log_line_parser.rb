class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    return @line.split(":")[1].strip
  end

  def log_level
    return @line.split(":")[0].downcase.gsub("[","").gsub("]","")
  end

  def reformat
    line_message = @line.split(":")[1].strip
    line_log_level = @line.split(":")[0].downcase.gsub("[","").gsub("]","")
    return "#{line_message} (#{line_log_level})"
  end
end
