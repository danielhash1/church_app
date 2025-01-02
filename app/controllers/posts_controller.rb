class PostsController < ApplicationController
    before_action :authorize_admin!, only: [:new, :create, :edit, :update, :destroy]
    before_action :set_post, only: %i[show edit update destroy]

    def index
    @posts = Post.all
    end

    def show
    # Пост загружается в set_post
    end

    def new
    @post = Post.new
    end

    def create
    @post = Post.new(post_params)

    # ActiveStorage автоматически прикрепляет файлы
    if @post.save
        redirect_to posts_path, notice: 'Post was successfully created.'
    else
        render :new, status: :unprocessable_entity
    end
    end

    def edit
    end

    def update
    # Обработка новых изображений
    if params[:post][:images].present?
        @post.images.attach(params[:post][:images])
    end

    # Удаление выбранных изображений
    if params[:post][:images_to_delete].present?
        images_to_delete = params[:post][:images_to_delete]
        @post.images.each do |image|
        image.purge if images_to_delete.include?(image.id.to_s)
        end
    end

    # Обновление записи поста
    if @post.update(post_params.except(:images))
        redirect_to posts_path, notice: 'Post was successfully updated.'
    else
        Rails.logger.debug "Update failed: #{@post.errors.full_messages}"
        render :edit, status: :unprocessable_entity
    end
    end

    def destroy
        @post = Post.find(params[:id])

        @post.destroy
        redirect_to posts_path, notice: 'Post was successfully deleted.'
    end

    private

    def set_post
    @post = Post.find_by(id: params[:id])
    redirect_to posts_path, alert: 'Post not found' if @post.nil?
    end

    def post_params
        params.require(:post).permit(:title, :description, :video_url, :author_name, :author_email, images: [])
      end

    def authorize_admin!
    unless current_user&.admin?
        redirect_to root_path, alert: "You don't have permission to perform this action!"
    end
    end
end
