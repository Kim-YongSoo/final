class Post < ActiveRecord::Base
    #여러댓글을 가지고있다
    resourcify
    has_many :comments, dependent: :destroy
    belongs_to :user
end
