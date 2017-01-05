require 'rails_helper'

RSpec.describe "unities/show", type: :view do
  before(:each) do
    @unity = assign(:unity, Unity.create!(
      :name => "Name",
      :street => "Street",
      :number => "Number",
      :neighborhood => "Neighborhood",
      :city => "City",
      :state => "State",
      :phone_1 => "Phone 1",
      :phone_2 => "Phone 2",
      :school => nil,
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Neighborhood/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Phone 1/)
    expect(rendered).to match(/Phone 2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
