class HomeController < ApplicationController
  # load_and_authorize_resource
  def index
    unless user_signed_in?      
      redirect_to '/users/sign_in'    
    end 
  end

  def create
  end
  def submit
    # authorize! :write, @new_post
    @new_post = Post.new
    @new_post.title = params[:title]
    @new_post.content = params[:content]
    @new_post.save
    
    redirect_to "/home/list"
    
  end
  def read
    
    @one_post = Post.find(params[:post_id])
    @comments = Comment.where(:post_id => params[:post_id])
  end
  
  def list
    @every_post = Post.all
  end
  
  def update
    @one_post = Post.find(params[:post_id])
  end
  
  def update_view
    @one_post = Post.find(params[:post_id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.save
    
    redirect_to "/home/list"
  end
  
  def destroy
    @the_post = Post.find(params[:id_of_post])
    @the_post.destroy
    
    redirect_to "/home/list"
  end
end
