class Smartkey < ActiveRecord::Base
  has_many :tasks
  validates :head,
  presence: {message: "入力してください"},
  length: {minimum: 3, message: "短すぎ！"}
end
