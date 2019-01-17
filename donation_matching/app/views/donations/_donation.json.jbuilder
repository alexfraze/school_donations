json.extract! donation, :id, :parent_id, :donation_date, :teacher_id, :status, :amount, :notes, :version, :created_at, :updated_at
json.url donation_url(donation, format: :json)
