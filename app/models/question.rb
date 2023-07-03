class Question < ApplicationRecord
	# titleは必須 100文字まで
	validates :title, presence: true, length: { maximum: 100 }
	validates :body, length: {maximum: 3000 }
end
