class Comment < ActiveRecord::Base

  belongs_to :posting

  validates :commenter, presence: true
  validates :body, presence: true


end
