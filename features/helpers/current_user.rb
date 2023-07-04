class CurrentUser
  attr_reader :email, :password

  def initialize(role)
    email_key, password_key = ROLE_TO_ENV_KEYS[role]

    @email = ENV.fetch(email_key)
    @password = ENV.fetch(password_key)
  end

  ROLE_TO_ENV_KEYS = {
    buyer: ['BUYER_EMAIL', 'BUYER_PASSWORD'],
    admin: ['ADMIN_EMAIL', 'ADMIN_PASSWORD']
  }.freeze
end

def current_user(role = :buyer)
  @current_user ||= CurrentUser.new(role)
end
