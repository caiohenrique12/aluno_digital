require 'rails_helper'

RSpec.describe Classroom, type: :model do
  subject {
    described_class.new(name: "3 Ano A", turn: 1, unity_id: 1)
  }
  it "Should be a valid" do
    expect(subject).to be_valid
  end
  it "Should be a valid name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid turn" do
    subject.turn = nil
    expect(subject).to_not be_valid
  end
  it "Should be a valid unity" do
    subject.unity_id = nil
    expect(subject).to_not be_valid
  end
end
