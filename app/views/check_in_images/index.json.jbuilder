json.array!(@check_in_images) do |check_in_image|
  json.extract! check_in_image, :id, :check_in_id, :description
  json.url check_in_image_url(check_in_image, format: :json)
end
