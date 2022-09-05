class Group < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  validates :name, presence: true, length: { in: 4..250 }
  validates :icon, presence: true, length: { in: 4..250 }
end

