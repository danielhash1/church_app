class PostsController < ApplicationController
    before_action :set_post, only: %i[show edit update destroy]

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end


    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
        redirect_to posts_path, notice: 'Post was successfully created.'
        else
        render :new
        end
    end

    def edit
    end

    def update
        if @post.update(post_params)
        redirect_to @post, notice: 'Post was successfully updated.'
        else
        render :edit
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path, notice: 'Post was successfully destroyed.'
    end

    private

    def set_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :image_url, :description, :video_url, images: [])
    end

end
