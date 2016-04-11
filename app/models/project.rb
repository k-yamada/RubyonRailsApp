class Project < ActiveRecord::Base
  has_many :stuffs
  validates :title, :stuffnum,
  presence: { message: "入力してください" }
end
