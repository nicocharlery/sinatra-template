module FiveWhys::UserRepository
  extend self

  def all
    users = []

    session['users'].find.each do |user_h|
      users <<  User.new(user_h.to_hash.symbolize_keys)
    end
    users
  end

  def create user
    session.with(safe: true) do |safe|
      safe[:users].insert(username: user.username, password: user.password)
    end
  end

  private

  def session
    Database.session
  end
end
