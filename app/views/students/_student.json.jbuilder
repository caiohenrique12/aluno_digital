json.extract! student, :id, :name, :age, :sex, :parent_id, :registration, :active, :created_at, :updated_at
json.url student_url(student, format: :json)