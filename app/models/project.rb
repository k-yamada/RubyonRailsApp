class Project < ActiveRecord::Base
  has_many :stuffs
  validates :title, :stuffnum,
  presence: { message: "入力してください" }

  validates :stuffnum,
  uniqueness: { message: "既に存在する番号です"}
end
