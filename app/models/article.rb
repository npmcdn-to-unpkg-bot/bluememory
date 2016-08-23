class Article < ActiveRecord::Base

    belongs_to :location
    
    has_many :replies
    has_many :statuses
    has_many :users, through: :statuses

end
