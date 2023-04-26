class Quest < ApplicationRecord
  belongs_to :user
  has_many :applications, dependent: :destroy
  has_one_attached :file

  enum category: { design: 0, programming: 1, writing: 2 }
  enum difficulty: { beginner: 0, intermediate: 1, advanced: 2 }
  enum public_scope: { public_scope_public: 0, public_scope_private: 1, public_scope_friends: 2 }

  validates :title, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 300 }
end
