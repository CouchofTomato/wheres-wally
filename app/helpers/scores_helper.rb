module ScoresHelper
  def convert_seconds_to_time(time)
    Time.at(time).utc.strftime("%M:%S")
  end
end
