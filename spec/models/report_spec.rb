require 'rails_helper'

RSpec.describe Report, type: :model do
  describe "バリデーションのテスト" do
    let(:user) { FactoryBot.build(:user) }

    # 正常系
    context "バリデーションが全て正しい時" do
      it "エラーにならない" do
        report = FactoryBot.build(:report)

        expect(report).to be_valid
      end
    end

    # 異常系
    describe "タイトルのバリデーションに関するテスト" do
      context "タイトルが空の時" do
        it "エラーになる" do
          report = FactoryBot.build(:report, title: "")

          expect(report).not_to be_valid
        end
      end

      context "タイトルが重複している時" do
        it "エラーになる" do
          report = FactoryBot.create(:report)

          duplicated_report = FactoryBot.build(:report, title: report.title)
          expect(duplicated_report.valid?).to eq(false)
        end
      end
    end
  end
end
