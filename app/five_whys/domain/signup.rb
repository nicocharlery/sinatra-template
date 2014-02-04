class Signup
  def initialize(listener, user_repository, params)
    @listener = listener
    @user_repository = user_repository
    @params = params
  end

  def signup
    user =User.new(@params)
    return @listener.user_creation_failed if !user.valid?
    return @listener.user_creation_succeeded(user) if @user_repository.create(user)
  end
end
