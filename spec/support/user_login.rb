module UserLogin

  def create_user(user_type)
    if user_type == 'admin'
      create(:user, role: 1)
    elsif user_type == 'user'
      create(:user)
    end
  end

  def sign_in(user_type)
    user = create_user(user_type)
    fill_in "Email", with: user.email
    fill_in "Password", with: "password"
    click_button "Login"
  end

end
