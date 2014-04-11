def check_seconds(seconds, x)
  if seconds + x > 60
    time = (seconds + x) - 60
  else
    time = seconds + x
  end
  time
end




def tomato(seconds)
  time = Time.new
  time_hash = {:hour => time.hour, :minute => time.min, :second => time.sec}
  while true
    if check_seconds(time_hash[:second],seconds) == Time.new.sec
      system("say -v 'Pipe Orga' 'Tomato'")
      exit
    end
    sleep 1
  end
end

puts 'Please enter the amount of seconds you want to set a timer for: '
seconds = gets.chomp.to_i
tomato(seconds)