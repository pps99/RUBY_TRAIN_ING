class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
    respond_to do |format|
      format.html
      format.csv { send_data @posts.to_csv, filename: "posts-#{Date.today}.csv" }
    end
  end

  def show
    @post = UserService.getUserByID(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
 
    @is_post_create = PostService.createPost(@post)
    if @is_post_create
      respond_to do |format|
        format.html { redirect_to posts_path }
        format.js   
    end
    else
      render :new
    end

  end

  def edit
    @post = PostService.getPostByID(params[:id])
  end

  def update
    @post = PostService.getPostByID(params[:id])
    @is_post_update = PostService.updatePost(@post, post_params)
    if @is_post_update
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @post = PostService.getPostByID(params[:id])
    PostService.destroy(@post)

    respond_to do |format|
      format.html { redirect_to posts_path }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end

  def import
    Post.import(params[:file])
    redirect_to posts_path
  end

  def send_mail
    @sql = "select email  from users where (id=#{current_user.id});"
    @email = ActiveRecord::Base.connection.execute(@sql).to_a
    SendMailer.send_created(@email,current_user.id).deliver_now
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :status, :user_id)
  end
end
