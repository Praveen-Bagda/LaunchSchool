# input: string
# output: number or nothing

def minilang(str)
  commands = str.downcase.split

  stack = []
  register = 0
  commands.each do |command|
    case command
    when 'push'
      stack.push(register)
    when 'add'
      register += stack.pop
    when 'sub'
      register -= stack.pop
    when 'mult'
      register *= stack.pop
    when 'div'
      register /= stack.pop
    when 'mod'
      register %= stack.pop
    when 'pop'
      register = stack.pop
    when 'print'
      p register
    else
      register = command.to_i
    end
  end
end

minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')