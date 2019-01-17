json.extract! user, :id, :first, :last, :email, :role, :username, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
