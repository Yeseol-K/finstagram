class User < ActiveRecord::Base

  # ... The rest of your code is still here ...

  has_many :finstagram_posts
  has_many :comments
  has_many :likes
  # --- Add these lines ---
  validates :email, :username, uniqueness: true
  validates :email, :avatar_url, :username, :password, presence: true
  # -----------------------

end