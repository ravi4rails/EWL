class User < ApplicationRecord
   
  mount_uploader :profile_image, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :role, presence: true

  ROLES = %w[student, employeer, jobseeker].freeze 
end
