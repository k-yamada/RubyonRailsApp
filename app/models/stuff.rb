class Stuff < ActiveRecord::Base
  belongs_to :project
  validates :title, :mail, :tel, :post, :address, :birthday,
  presence: { message: "入力してください" }
#  scope :unfinished, -> { where(done: false) }
end
