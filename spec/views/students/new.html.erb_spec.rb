require 'rails_helper'

RSpec.describe "students/new", type: :view do
  before(:each) do
    assign(:student, Student.new(
      :name => "MyString",
      :age => 1,
      :sex => 1,
      :parent_one => 1,
      :parent_two => 1,
      :registration => "MyString",
      :active => false
    ))
  end

  it "renders new student form" do
    render

    assert_select "form[action=?][method=?]", students_path, "post" do

      assert_select "input#student_name[name=?]", "student[name]"

      assert_select "input#student_age[name=?]", "student[age]"

      assert_select "input#student_sex[name=?]", "student[sex]"

      assert_select "input#student_parent_one[name=?]", "student[parent_one]"

      assert_select "input#student_parent_two[name=?]", "student[parent_two]"

      assert_select "input#student_registration[name=?]", "student[registration]"

      assert_select "input#student_active[name=?]", "student[active]"
    end
  end
end
