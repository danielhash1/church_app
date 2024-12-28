class MinistriesController < ApplicationController
  before_action :authorize_admin!, only: [:new, :create, :edit, :update, :destroy, :update_order]

  def index
    @ministries = Ministry.order(:position)  # Загружаем министерства в порядке их позиции
  end

  def new
    @ministry = Ministry.new
  end

  def create
    @ministry = Ministry.new(ministry_params)
    @ministry.position = Ministry.count + 1  # Устанавливаем позицию как последнюю

    if @ministry.save
      redirect_to ministries_path, notice: 'Ministry was successfully created.'
    else
      render :new
    end
  end

  def edit
    @ministry = Ministry.find(params[:id])  # Find the ministry by ID
  end

  def update
    @ministry = Ministry.find(params[:id])

    # Удаляем изображение, если был выбран чекбокс
    if params[:remove_image] == '1'
      @ministry.image.purge
    end

    if @ministry.update(ministry_params)
      redirect_to ministries_path, notice: 'Ministry was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @ministry = Ministry.find(params[:id])
    @ministry.destroy
    redirect_to ministries_path, notice: 'Ministry was successfully deleted.'
  end

  def update_order
    if params[:order].present?
      Ministry.transaction do
        params[:order].each_with_index do |id, index|
          ministry = Ministry.find(id)
          ministry.update(position: index + 1)  # Обновляем позицию министерства
        end
      end
      render json: { success: true }
    else
      render json: { success: false, message: "No order provided" }
    end
  end

  private

  def ministry_params
    params.require(:ministry).permit(:name, :description, :image, :schedule)
  end
  
  # Метод для авторизации админа
  def authorize_admin!
    unless current_user&.admin?
      redirect_to root_path, alert: "You don't have permission to perform this action!"
    end
  end
end
