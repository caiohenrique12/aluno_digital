require 'rails_helper'

RSpec.describe "teachers/show", type: :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
      :name => "Name",
      :sex => 2,
      :phone_1 => "Phone 1",
      :phone_2 => "Phone 2",
      :registration => "Registration",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Phone 1/)
    expect(rendered).to match(/Phone 2/)
    expect(rendered).to match(/Registration/)
    expect(rendered).to match(/false/)
  end
end
