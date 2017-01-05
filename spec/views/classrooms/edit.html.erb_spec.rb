require 'rails_helper'

RSpec.describe "classrooms/edit", type: :view do
  before(:each) do
    @classroom = assign(:classroom, Classroom.create!(
      :name => "MyString",
      :turn => 1,
      :unity => nil
    ))
  end

  it "renders the edit classroom form" do
    render

    assert_select "form[action=?][method=?]", classroom_path(@classroom), "post" do

      assert_select "input#classroom_name[name=?]", "classroom[name]"

      assert_select "input#classroom_turn[name=?]", "classroom[turn]"

      assert_select "input#classroom_unity_id[name=?]", "classroom[unity_id]"
    end
  end
end
