module UserLogin

  def sign_in(user_type)
    if user_type == 'admin'
      create(:user, role: 1)
    elsif user_type == 'user'
      create(:user)
    end
  end

end
