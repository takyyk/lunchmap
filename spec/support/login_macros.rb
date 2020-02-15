module LoginMacros
  def login(user)
    visit login_path
    fill_in "user_sessions_email", with: user.email
    fill_in "user_sessions_password", with: "password"
    click_button("ログイン")
  end
end
