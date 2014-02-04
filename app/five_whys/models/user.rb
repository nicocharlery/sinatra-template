class User
  attr_reader :id, :username, :password

  def initialize params
    @id = params[:_id]
    @username = params[:username]
    @password = params[:password]
  end

  def valid?
    true
  end
end
