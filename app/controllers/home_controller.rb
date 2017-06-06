class HomeController < ApplicationController
  def index
  end

  def create
  end
  def submit
    new_post = Post.new
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.save
    
    redirect_to "/home/list"
  end
  def read
    @one_post = Post.find(params[:post_id])
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
