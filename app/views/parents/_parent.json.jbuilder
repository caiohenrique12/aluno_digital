json.extract! parent, :id, :name, :cpf, :age, :sex, :street, :number, :neighborhood, :city, :state, :phone_1, :phone_2, :active, :created_at, :updated_at
json.url parent_url(parent, format: :json)