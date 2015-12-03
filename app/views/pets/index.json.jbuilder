json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :family, :user_fb_id, :image_url
  json.url pet_url(pet, format: :json)
end
