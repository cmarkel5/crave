module SessionsHelper
  def sign_in(customer)
    # save a cookie on their computer
    remember_token = Customer.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    # update our database with their cookie info
    customer.update_attribute(:remember_token, Customer.digest(remember_token))
    # set a current_user variable equal to customer
    self.current_user = customer
  end

  def current_user=(customer)
    @current_user = customer
  end

  def current_user
    digested_remember_token = Customer.digest(cookies[:remember_token])
    @current_user ||= Customer.find_by(remember_token: digested_remember_token)
  end

  def current_user?(customer)
    current_user == customer
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    current_user.update_attribute(:remember_token,
                  Customer.digest(Customer.new_remember_token))
    cookies.delete(:remember_token)
    self.current_user = nil
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url if request.get?
  end
end
