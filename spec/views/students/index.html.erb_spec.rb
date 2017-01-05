require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :name => "Name",
        :age => "Age",
        :sex => 2,
        :parent => nil,
        :registration => "Registration",
        :active => false
      ),
      Student.create!(
        :name => "Name",
        :age => "Age",
        :sex => 2,
        :parent => nil,
        :registration => "Registration",
        :active => false
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Age".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Registration".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
