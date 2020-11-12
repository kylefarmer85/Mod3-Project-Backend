class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy 
    
    validates :username, :email, presence: true , uniqueness: { case_sensitive: false }, length: {maximum: 50}
  
end
