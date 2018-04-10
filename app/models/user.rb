class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # 投稿モデル
  has_many :post_images
  # コメント　=> 投稿モデル
  has_many :post_comments, dependent: :destroy
  # いいね機能モデル
  has_many :favorites, dependent: :destroy
end
