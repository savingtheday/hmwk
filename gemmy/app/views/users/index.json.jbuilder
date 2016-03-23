json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :date_of_birth, :description, :remember_me, :age, :email, :country_id
  json.url user_url(user, format: :json)
end
