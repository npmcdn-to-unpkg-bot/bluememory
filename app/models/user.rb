class User < ActiveRecord::Base

  has_many :statuses
  has_many :replystatuses
  has_many :articles, through: :statuses
  has_many :replies, through: :replystatuses
  has_many :locations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
