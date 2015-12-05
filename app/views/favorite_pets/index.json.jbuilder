json.array!(@favorite_pets) do |favorite_pet|
  json.extract! favorite_pet, :id, :pet_id, :user_id
  json.url favorite_pet_url(favorite_pet, format: :json)
end
