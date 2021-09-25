pets = {
  cat:  'fluffy',
  dog:  ['sparky', 'fido'],
  fish: 'oscar' 
}

# pets[:dog] << 'bowser'
pets[:dog].push('bowser')

p pets