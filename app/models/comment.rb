class Comment < ActiveRecord::Base
  validates :body, :user_id, :cosmetic_id,  presence: true

  belongs_to :user
  belongs_to :cosmetic

  def created_at_for_display
    created_at.strftime("%Y-%m-%d %H:%M")
  end
end
