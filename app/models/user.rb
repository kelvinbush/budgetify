class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :entities, foreign_key: :author_id
  has_many :groups, foreign_key: :author_id

  validates :name, presence: true, length: { in: 4..250 }
end
