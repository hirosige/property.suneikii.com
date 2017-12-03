module Printable
  def to_string(start=true)
    action = start ? "Start" : "End"
    puts "#{action} #{@name} Transaction"
  end
end