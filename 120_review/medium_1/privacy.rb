class Machine
  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end
  
  private
  
  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

tester = Machine.new
tester.start
tester.stop
p tester.switch

