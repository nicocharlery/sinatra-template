class Signuper
  def initialize(listener, params)
    @listener = listener
  end

  def perform
    @listener.failing_signup_missing_parameters
  end
end
