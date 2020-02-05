require 'rails_helper'

RSpec.describe "Reports", type: :system do

  describe "レポートの挙動テスト" do
    let(:user) {FactoryBot.create(:user)}
    let(:other_user) {(FactoryBot.create(:user))}
    let(:report) {FactoryBot.create(:report, user_id: user.id)}
    let(:other_report) {FactoryBot.create(:report, user_id: other_user.id)}

    describe "ログイン後のケース" do
      before do
        login(user)
      end
      describe "レポートの新規作成画面" do
        # 正常系
        context "フォームの入力値が全て正しい時" do
          it "お店の記録の新規作成に成功する" do
            visit new_report_path
            fill_in "report_title", with: "最初のタイトル"
            fill_in "report_body", with: "最初のコンテント"
            click_button("作成")

            expect(page).to have_content "最初のタイトル"
          end
        end
      end
      describe "レポートの一覧画面" do
        # 正常系
        let!(:report) {FactoryBot.create(:report, user_id: user.id)}
        context "Destroyボタンをクリックした時"
        it "レポートの削除に成功する" do
          login(user)
          visit report_path(report)
          click_link("削除")
          page.driver.browser.switch_to.alert.accept
          expect(page).not_to have_content report.title
          expect(page).not_to have_content report.body
        end
      end
    end
  end
end
