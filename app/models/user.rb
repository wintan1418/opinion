class User < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :opinions
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    def username
    self.email.split('@')[0].capitalize 

  end
end
