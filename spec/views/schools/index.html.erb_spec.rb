require 'rails_helper'

RSpec.describe "schools/index", type: :view do
  before(:each) do
    assign(:schools, [
      School.create!(
        :name => "Name",
        :cpnj => "Cpnj",
        :active => false
      ),
      School.create!(
        :name => "Name",
        :cpnj => "Cpnj",
        :active => false
      )
    ])
  end

  it "renders a list of schools" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cpnj".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
