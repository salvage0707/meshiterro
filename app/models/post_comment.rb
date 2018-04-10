class PostComment < ApplicationRecord

	# ユーザーモデル
	belongs_to :user
	# 投稿モデル
	belongs_to :post_image
end
