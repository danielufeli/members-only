module PostHelper
  def user_auth_menu(params, link)
    out = ''
    if user_signed_in?
      out << link_to(params, link, class: "nav-link")
    end
    out.html_safe
  end

  def auth_menu
    out = ''
    if user_signed_in?
        out << link_to('Sign Out', destroy_user_session_path, method: :delete, class: 'nav-link')
    else
        out << link_to('Sign in', new_user_session_path, class: 'nav-link')
    end
    out.html_safe
  end

  def sign_up_btn
    out = ''
    if !user_signed_in?
      out << link_to('Sign up', new_user_registration_path, class: 'nav-link')
    end
    out.html_safe
  end

  def author_name(post)
    if user_signed_in?
      'Author: ' +  post.user.name
    else
      'Login to see the Author\'s Name'
    end
  end
end
