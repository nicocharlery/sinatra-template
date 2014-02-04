class Signup
  def initialize(listener, user_repository, params)
    @listener = listener
    @user_repository = user_repository
    @params = params.symbolize_keys
  end

  def signup
    user_hash = @params.select{|key,_v| [:username, :password].include? key }
    user_created = @user_repository.create(user_hash)
    return @listener.user_creation_succeeded(user_hash) if user_created
  end
end
