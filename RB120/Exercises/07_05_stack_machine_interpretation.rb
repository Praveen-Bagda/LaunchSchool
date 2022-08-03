require 'pry-byebug'

class Minilang

  def initialize(str)
    @commands = str.split
    @register = 0
    @stack = []
  end

  def eval
    #binding.pry
    @commands.each do |command|
      if is_number?(command)
        @register = command.to_i
      elsif command == "PRINT"
        print 
      elsif command == "PUSH"
        push
      elsif command == "MULT"
        mult
      elsif command == "ADD"
        add
      elsif command == "POP"
        pop
      end
    end
  end

  def print
    puts @register
  end

  def push
    @stack << @register
  end
  
  def mult
    @register = @register * @stack.pop
  end

  def add
    @register = @register + @stack.pop
  end

  def pop
    @register = @stack.pop 
  end

  def is_number?(str)
    str.to_i.to_s == str
  end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)