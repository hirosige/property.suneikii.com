class AwesomeDebugger
  def initialize
    @id = 0
    @waiting_line = Array.new
  end

  def learn(object, name)
    @waiting_line.push({
      :id     => @id,
      :name   => name,
      :object => object
                       })
    @id += 1
  end

  def pool
    @waiting_line
  end
end