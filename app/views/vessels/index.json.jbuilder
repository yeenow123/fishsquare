json.array!(@vessels) do |vessel|
  json.extract! vessel, :id, :check_in_id, :vessel_type, :vessel_number, :vessel_name, :estimated_crew, :notes
  json.url vessel_url(vessel, format: :json)
end
