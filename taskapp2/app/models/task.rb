class Task < ActiveRecord::Base
  belongs_to :smartkey
  validates :title, presence: true
  scope :unfinished, -> { where(done: false)}
end
