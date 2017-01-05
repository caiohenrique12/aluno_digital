require 'rails_helper'

RSpec.describe School, type: :model do
  subject {
    described_class.new(name: "Farias Brito", cnpj: "4444444/000144", active: true)
  }
  it "Should be a valid" do
    expect(subject).to be_valid
  end
  it "Should be a valid name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid active" do
    expect(subject.active).to be_truthy
  end
  it "Should be a valid cnpj" do
    subject.cnpj = nil
    expect(subject).to_not be_valid
  end
  it "CNPJ is unique" do
    school = School.new(name: "7 de Setembro", cnpj: "4104444/000144", active: true)
    expect(school.cnpj).to_not eq(subject.cnpj)
  end
end
