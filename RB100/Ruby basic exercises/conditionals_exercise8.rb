status = ['awake', 'tired'].sample

var_status =  if status == 'awake'
                "Be productive!"
              else
                "Go to sleep!"
              end

puts var_status