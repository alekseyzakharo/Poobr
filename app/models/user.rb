class User < ActiveRecord::Base

  #we need to downcase before we save, saving is case sensitive
  before_save { self.email = email.downcase }

  validates :name,  presence: true, length: { maximum: 50 }

  #this is the 'basic' regex which will give us proper email format
  #we could make it more complex but we dont need to atm
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  #we need email uniquness so that we can search db and not have collisions
  validates :email, presence: true, length: { maximum: 255 },
              format: {with: VALID_EMAIL_REGEX },
              uniqueness: { case_sensitive: false}


  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
