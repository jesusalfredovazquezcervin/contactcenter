json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :name, :mondayStart, :mondayEnd, :tuesdayStart, :tuesdayEnd, :wednesdayStart, :wednesdayEnd, :thursdayStart, :thursdayEnd, :saturdayStart, :saturdayEnd, :sundayStart, :sundayEnd
  json.url schedule_url(schedule, format: :json)
end
