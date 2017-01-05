require 'rails_helper'

RSpec.describe "schools/edit", type: :view do
  before(:each) do
    @school = assign(:school, School.create!(
      :name => "MyString",
      :cpnj => "MyString",
      :active => false
    ))
  end

  it "renders the edit school form" do
    render

    assert_select "form[action=?][method=?]", school_path(@school), "post" do

      assert_select "input#school_name[name=?]", "school[name]"

      assert_select "input#school_cpnj[name=?]", "school[cpnj]"

      assert_select "input#school_active[name=?]", "school[active]"
    end
  end
end
