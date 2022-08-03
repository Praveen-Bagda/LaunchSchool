def clear_screen
  system 'clear'
end

def saf(clear_screen: true)
  :clear_screen    
end

p saf
p saf(clear_screen: false)