class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :parent, class_name: "Comment", optional: true

  validates :content, presence: true

  # Child comments for nested replies
  has_many :child_comments, class_name: "Comment", foreign_key: "parent_id", dependent: :destroy

  def self.top_level_comments
    where(parent_id: nil)
  end
end
