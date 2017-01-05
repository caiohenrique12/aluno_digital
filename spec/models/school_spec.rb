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
    pending "add some examples to (or delete) #{__FILE__}"
  end
end
