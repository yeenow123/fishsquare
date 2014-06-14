json.array!(@check_ins) do |check_in|
  json.extract! check_in, :id, :lat, :lng, :type, :fishing_type, :notes
  json.url check_in_url(check_in, format: :json)
end
