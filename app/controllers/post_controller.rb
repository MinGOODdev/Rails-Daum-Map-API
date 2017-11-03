class PostController < ApplicationController
  def indexinpost
  end
  def write
    new_post = Post.new
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.save
    
    redirect_to"/list"
  end 
  def list 
    @every_post = Post.all
  end 
  def update
    @one_post = Post.find(params[:post_id])
  end 
  def destroy
     @one_post = Post.find(params[:post_id])
     @one_post.destroy
    redirect_to "/list"
  end 
end
