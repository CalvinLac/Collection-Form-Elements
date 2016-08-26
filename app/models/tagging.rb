class Tagging < ApplicationRecord
  belongs_to :post
  belongs_to :tag

  validates :post, presence: true, allow_nil: true
  validates :tag, presence: true, allow_nil: true
end
