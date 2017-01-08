json.extract! student, :id, :name, :age, :sex, :registration, :active, :created_at, :updated_at
json.url student_url(student, format: :json)
