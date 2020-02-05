require "rails_helper"

RSpec.describe "Users", type: :system do

  describe "ユーザーの挙動テスト" do
    let(:user) {FactoryBot.create(:user)}
    let(:other_user) {(FactoryBot.create(:user))}
    let(:task) {FactoryBot.create(:report, title: "テストタイトル", user_id: user.id)}

    describe "ログイン前のケース" do
      describe "ユーザー新規登録画面" do
        # 正常系
        context "フォーム入力値が全て正しい時" do
          it "ユーザー新規作成に成功する" do
            visit new_user_path
            fill_in "user_last_name", with: "田中"
            fill_in "user_first_name", with: "太郎"
            fill_in "user_email", with: "user@example.com"
            fill_in "user_password", with: "password"
            fill_in "user_password_confirmation", with: "password"
            click_button("登録")
            expect(login_path).to eq(current_path)

            user = User.find_by(email: "user@example.com")
            login(user)
            visit root_path
            expect(page).to have_content user.last_name
          end
        end

        # 異常系
        context "メールアドレスが未入力の時" do
          it "ユーザーの新規作成に失敗する" do
            visit new_user_path
            fill_in "user_email", with: ""
            fill_in "user_password", with: "password"
            fill_in "user_password_confirmation", with: "password"
            click_button("登録")
            expect(users_path).to eq(current_path)
          end
        end
        context "登録済メールアドレスの時" do
          it "ユーザーの新規作成に失敗する" do
            visit new_user_path
            fill_in "user_email", with: user.email
            fill_in "user_password", with: "password"
            fill_in "user_password_confirmation", with: "password"
            click_button("登録")
            expect(users_path).to eq(current_path)
          end
        end
      end
    end
  end
end
