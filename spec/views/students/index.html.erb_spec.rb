require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :name => "Name",
        :age => 2,
        :sex => 3,
        :registration => "Registration",
        :active => false
      ),
      Student.create!(
        :name => "Name",
        :age => 2,
        :sex => 3,
        :registration => "Registration",
        :active => false
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Registration".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
