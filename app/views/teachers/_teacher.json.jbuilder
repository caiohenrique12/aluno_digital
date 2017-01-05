json.extract! teacher, :id, :name, :sex, :phone_1, :phone_2, :registration, :active, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)