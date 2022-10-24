=begin
def time_of_day(integer)
  time = valid_minutes(integer)
  hour, minute = time.divmod(60)
  if hour < 0
    hour = 24 + hour
  end
  time = sprintf("%2.2i:%2.2i", hour, minute)
end

def valid_minutes(integer)
  if integer > 0
    loop do
      break if integer < 1400
      integer -= 1440
    end
  elsif integer < 0
    loop do
      break if integer > -1400
      integer += 1440
    end
  end

  integer
end
=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end
  p minutes
  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
  puts delta_minutes
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

#p time_of_day(0) == "00:00"
#p time_of_day(-3) == "23:57"
#p time_of_day(35) == "00:35"
#p time_of_day(-1437) == "00:03"
p normalize_minutes_to_0_through_1439(3000) #== "02:00"
#p time_of_day(800) == "13:20"
#p time_of_day(-4231) == "01:29"
