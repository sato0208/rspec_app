class Post < ApplicationRecord
	# タイトルカラムがからの場合はバリデーションがかかるようにする
	validates :title, presence: true
end
