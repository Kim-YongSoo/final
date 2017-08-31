class Comment < ActiveRecord::Base
    #포스트에 속해있음
    belongs_to :post 
end
