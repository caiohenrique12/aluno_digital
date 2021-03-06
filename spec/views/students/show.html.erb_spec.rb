require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :name => "Name",
      :age => 2,
      :sex => 3,
      :registration => "Registration",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Registration/)
    expect(rendered).to match(/false/)
  end
end
