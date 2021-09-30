class Favorite < ApplicationRecord

  # いいねアソシエーション
  belongs_to :book
  belongs_to :user

end
