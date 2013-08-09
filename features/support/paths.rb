
def path_to(page_name)
  case page_name

  when /the home\s?page/
    '/welcome/index'
  when /the signup page/
    '/signup'
  when /the login page/
    '/users/sign_in'
  when /the user show page for "(.+)"/
    user_path(User.find_by_email($1).id)
  when /the edit user page for "(.+)"/
    edit_user_path(User.find_by_email($1))

  end

end