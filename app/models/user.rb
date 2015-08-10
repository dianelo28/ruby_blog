class User < ActiveRecord::Base

	has_secure_password
	validates :email, :password, presence: true
	validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i}
	validates :email, uniqueness: true
	validates :password, length: { minimum: 6 }

	has_many :posts, dependent: :destroy

	def generate_username
		first_name[0] + last_name + rand(10..99)
	end
end
