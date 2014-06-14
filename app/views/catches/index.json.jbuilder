json.array!(@catches) do |catch|
  json.extract! catch, :id, :check_in_id, :species, :notes
  json.url catch_url(catch, format: :json)
end
