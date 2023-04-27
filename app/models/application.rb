class Application < ApplicationRecord
  belongs_to :user
  belongs_to :quest
  validates :user_id, uniqueness: { scope: :quest_id }
end