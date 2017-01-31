class User < ActiveRecord::Base
  include BCrypt

  validates :username, presence: true, uniqueness: true

  def password
    @password ||= BCrypt::Password.new(self.password_thing)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_thing = @password
  end
end
