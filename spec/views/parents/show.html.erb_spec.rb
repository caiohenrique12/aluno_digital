require 'rails_helper'

RSpec.describe "parents/show", type: :view do
  before(:each) do
    @parent = assign(:parent, Parent.create!(
      :name => "Name",
      :cpf => "Cpf",
      :age => "Age",
      :sex => 2,
      :street => "Street",
      :number => "Number",
      :neighborhood => "Neighborhood",
      :city => "City",
      :state => "State",
      :phone_1 => "Phone 1",
      :phone_2 => "Phone 2",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Age/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Neighborhood/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Phone 1/)
    expect(rendered).to match(/Phone 2/)
    expect(rendered).to match(/false/)
  end
end
