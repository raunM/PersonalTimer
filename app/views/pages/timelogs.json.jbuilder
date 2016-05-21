json.array!(@time_logs) do |log|
  json.extract! log, :id, :description, :timespent
  json.url post_url(log, format: :json)
end
