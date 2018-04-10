class PostImage < ApplicationRecord
	attachment :image

	belongs_to :user																# ユーザーモデル
	has_many :favorites, dependent: :destroy				# いいね機能
	has_many :post_comments, dependent: :destroy		# 投稿モデル

	# バリデーション
	validates :shop_name, presence: true
  validates :image, presence: true


	def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end

end
