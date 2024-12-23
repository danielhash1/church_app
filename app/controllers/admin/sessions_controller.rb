class Admin::SessionsController < ApplicationController
  def create
    # Ищем пользователя по email
    @user = User.find_by(email: params[:email])

    # Проверяем только пароль
    if @user&.valid_password?(params[:password])
      # Сохраняем пользователя в сессии
      session[:user_id] = @user.id
      # Перенаправляем пользователя на главную страницу или другую нужную
      redirect_to root_path, alert: "Logged in successfully"
    else
      # Если пароль не подошел, выводим ошибку
      flash.now[:alert] = "Invalid email or password"
      render :new
    end
  end

  def destroy
    # Удаляем пользователя из сессии
    session.delete(:user_id)
    redirect_to root_path, notice: "Logged out successfully"
  end
end
