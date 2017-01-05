require 'rails_helper'

RSpec.describe Teacher, type: :model do
  subject {
    described_class.new(name: "Priscila Almeida", sex: 2, phone_1: "566461", phone_2: "5564641" , registration: 'P339X', active: true)
  }
  it "Should be a valid" do
    expect(subject).to be_valid
  end
  it "Should be a valid name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid sex" do
    subject.sex = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid phone_1" do
    subject.phone_1 = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid phone_2" do
    subject.phone_2 = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid registration" do
    subject.registration = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid active" do
    expect(subject.active).to be_truthy
  end
  it "Registration is unique" do
    teacher = Teacher.new(name: "Amanda Almeida", sex: 2, phone_1: "566461", phone_2: "5564641" , registration: 'Z339X', active: true)
    expect(teacher.registration).to_not eq(subject.registration)
  end
end
