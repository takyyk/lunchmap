require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#full_name" do
    let(:user) { FactoryBot.build(:user) }

    it "returns first and last name" do
      result = user.decorate.full_name

      expect(result).to eq "#{user.last_name} #{user.first_name}"
    end
  end
end
