require 'csv'

s =  CSV.read("/home/dispatchtrack/Desktop/T20_worldCup/script/sample_cricket_stats.csv")
#print s.class
#p s[1][1]
#p s[1][2]
#strike_rate = s[1][1]/s[1][2]
#p strike_rate
#puts (s[1][1].to_f)/(s[1][2].to_f)

def strike_rate
    s =  CSV.read("/home/dispatchtrack/Desktop/T20_worldCup/script/sample_cricket_stats.csv")
    strike_rate_array = []
    sort = []
    total_runs_scored = 0 
    total_balls_faced = 0
    
  begin
    for i in 1..(s.size)
        sr = (s[i][1].to_f)/(s[i][2].to_f)
        strike_rate_array << sr
        total_runs_scored += s[i][1].to_f
        total_balls_faced += s[i][2].to_f
        puts "Strike rate of #{s[i][0]} is #{sr}" 
    end
  rescue StandardError => error
    puts "Error: #{error}"
  end

    #return strike_rate_array
    #sort[] = strike_rate_array.sort
    #p "The Highest strike rate is #{sort[0]}"
    p "The total runs scored by all plyers is #{total_runs_scored}"
    p "The total balls faced by all players is #{total_balls_faced}"
end
p strike_rate()
def print
end  

=begin
begin   
    for i in 1..(s.size)
      sr = (s[i][1].to_f)/(s[i][2].to_f)
      #strike_rate_array << sr
      total_runs_scored += s[i][1]
      total_balls_faced += s[i][2]
        #puts "Strike rate of #{s[i][0]} is #{sr}"  
    end
    rescue StandardError => error
      puts "Error in calculating strike rate"
  end
=end