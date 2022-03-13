class PostRepository
  class << self
    def getAllPosts
      @posts = Post.all
    end

    def createPost(post)
      @is_post_create = post.save
    end

    def getPostByID(id)
      @post = Post.find(id)
    end

    def updatePost(post, post_params)
      @is_post_update = post.update(post_params)
    end

    def destroy(post)
      @is_post_destroy = post.destroy
    end
  end
end
