
def path_to(page_name)
  case page_name

  when /the home\s?page/
    '/welcome/index'
  when /the signup page/
    '/signup'
  when /the login page/
    '/users/sign_in'
  when /the new address page for "(.+)"/
    new_address_path(User.find_by_email($1))
  when /the addresses page/
    addresses_path
  when /the address page for "(.+)"/
    address_path(Address.last)

  end

end