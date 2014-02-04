class User
  attr_reader :id, :username, :password, :created_at

  def initialize params
    @id = params[:_id]
    @username = params[:username]
    @password = params[:password]
    @created_at = params[:created_at]
  end

  def valid?
    true
  end

end
