module FiveWhys::UserRepository
  extend GenericRepository
  take_good_care_of :users

  private

  def self.session
    Settings.database_session
  end
end
