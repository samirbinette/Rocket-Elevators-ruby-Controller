
def best_Elevator(optionA ,optionB ,requested ,status ,directionA ,directionB)



    status
    requested
    optionA
    optionB
    directionA
    directionB
            if status == 'none' and requested == optionA
                loop do
                    puts optionA
                    optionA += 1
                    if optionA == requested+1
                       break
                    end
            end
            
            elsif status == 'none' and requested == optionB
                loop do
                puts optionB
                optionB += 1
                if optionB == requested+1
                   break
                end
            end
            elsif ((status == 'up' or status == 'down') and  directionA=='idle'  and optionA < 5 and requested < 5  and  optionA < requested) or((status == 'up' or status == 'down') and directionA == 'idle' and optionA > 5 and requested > 5 and optionA < requested)
                puts "ELEVATOR A IS COMMING 1\n"
                 loop do
                   puts optionA
                   optionA += 1
                   if optionA == requested+1
                    break
                   end
                end
                elsif ((status == 'up' or status == 'down') and directionB == 'idle' and optionB < 5 and requested < 5 and optionB > requested) or ((status == 'up' or status == 'down') and directionB == 'idle' and optionB < 5 and requested <= 5 and optionB < requested) or ((status == 'up' or status == 'down') and directionB == 'idle' and optionB > 5 and requested < 5 and optionB > requested)
                    puts "elevator B is comming 2\n"
                    
                    loop do
                        puts optionB
                        optionB -=1
                        if optionB == requested-1
                         break
                        end
                     end
                puts "Door Open\n"
                 elsif((status == 'up' or status == 'down') and  directionA=='idle' and optionA > 5 and requested > 5  and  optionA > requested) or ((status == 'up' or status    == 'down' ) and directionB == 'moving' and (optionB < 10 or optionB > 0)) or ( (status == 'up' or status == 'down') and directionA == 'idle' and optionA > 5 and requested > 5 and optionA < requested)
                 puts "Elevator A is comming 6\n"
                 loop do
                    puts optionA
                    optionA -= 1
                    if optionA == requested-1
                     break
                    end
                 end
                 puts "open door"
                 elsif((status == 'up' or status == 'down') and  directionB =='idle' and optionB > 5 and requested > 5  and  optionB < requested)or((status == 'up' or status == 'down') and directionA == 'idle' and optionA > 5 and requested > 5 and optionA < requested)
                 puts "Elevator B is comming to 9\n"
                 loop do
                    puts optionB
                    optionB +=1
                    if optionB == requested+1
                     break
                    end
                 end
                 
                 print("Door Open\n")
                end

            
                 
    return optionA, optionB, requested, status, directionA, directionB

    end


def when_is_inside(floor,choice)

    buttomList = [1,2,3,4,5,6,7,8,9,10]
    floor
    choice

    puts"choose your destination"
    print "your choice: ", choice,"\n"

    if choice > 10
        puts "invalid answer"
        return when_is_inside()
    
    
    elsif choice < 0
        puts "invalid answer"
        return when_is_inside()
   
    elsif floor < choice
   
                
        loop do            
            puts floor
            floor += 1
            if floor == choice + 1
                 break
            end
        end
    elsif floor > choice
        loop do       
            puts floor
            floor -= 1
            if floor == choice - 1
                 break
            end
        end
    end
      
        
    
                
    return floor,choice 
    end
    

def scenario1()
    puts "scenario 1"
    puts "___________________________________________________________________________________________"
    best_Elevator(2, 6, 3, 'up', 'idle', 'idle')
    puts "door close\n"
    when_is_inside(3, 7)

   puts "door open\n"

    puts "___________________________________________________________________________________________"

end

def scenario2()
  print('SCENARIO 2')
  puts "___________________________________________________________________________________________"
  best_Elevator(10, 3, 1, 'up', 'idle', 'idle')
  puts "door close\n"
  when_is_inside(1, 6)
  puts "door open\n"
  puts "door close\n"
  puts "\n ----------2 minutes later--------------"
  best_Elevator(10, 6, 3, 'up', 'idle', 'idle')
  when_is_inside(3, 5)
  puts "door open\n"
  puts "third person"
  best_Elevator(10, 5, 9, 'down', 'idle', 'idle')
  when_is_inside(9, 2)
  puts "open"

  print('___________________________________________________________________________________________')
end

def scenario3()
    puts "Scenario 3"
    puts "___________________________________________________________________________________________"
    best_Elevator(10, 0, 3, 'down', 'idle', 'moving')
    puts "door open\n"
    puts "door close\n"
    when_is_inside(3, 2)

    puts "----------5 minutes later--------------"

    best_Elevator(2, 6, 10, 'up', 'idle', 'idle')
    puts "door close\n"
 when_is_inside(10, 3)
    puts "door open\n"

    puts "___________________________________________________________________________________________"
end

           

   
   

    
    

