#!/usr/bin/env ruby

password = ''
old_index = nil

File.open('keylog.txt', 'r') do |f|
  while line = f.gets
    puts "\r#{password}"

    if password.index(line[2]) != nil then # Does password contain the last digit?
      if password.index(line[1]) != nil then # Does password contain the middle digit?
        if password.index(line[0]) != nil then # Does password contain the first digit?
          
          if password.index(line[2]) > password.index(line[1]) then # Is the third digit after the second?
            if password.index(line[1]) > password.index(line[0]) then # Is the second after the first?
              next # Everything is okay :)
            else
              char = password[password.index(line[0])] # Store old char
              password[password.index(line[0])] = '' # Remove char from password

              password.insert(password.index(line[1]), char) # Move the first digit before the second
              redo
            end
          else
              char = password[password.index(line[1])] # Store old char
              password[password.index(line[1])] = '' # Remove char from password
              
              password.insert(password.index(line[2]), line[1]) # Move the second digit before the third
              redo
          end

        else
          password.insert(password.index(line[1]), line[0]) # Put the first digit before the second
          redo
        end
      else
        password.insert(password.index(line[2]), line[1]) # Put the second digit before the third
        redo         
      end
    else
      password.concat(line[2]) # Put the third digit at the end
      redo
    end

  end # while
end # Close file

puts password
