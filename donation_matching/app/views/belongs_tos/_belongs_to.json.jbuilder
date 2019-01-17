json.extract! belongs_to, :id, :user_id, :student_id, :created_at, :updated_at
json.url belongs_to_url(belongs_to, format: :json)
