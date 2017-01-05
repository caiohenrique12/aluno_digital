require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :name => "MyString",
      :age => "MyString",
      :sex => 1,
      :parent => nil,
      :registration => "MyString",
      :active => false
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "input#student_name[name=?]", "student[name]"

      assert_select "input#student_age[name=?]", "student[age]"

      assert_select "input#student_sex[name=?]", "student[sex]"

      assert_select "input#student_parent_id[name=?]", "student[parent_id]"

      assert_select "input#student_registration[name=?]", "student[registration]"

      assert_select "input#student_active[name=?]", "student[active]"
    end
  end
end
