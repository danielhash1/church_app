# app/controllers/admin/sessions_controller.rb
class Admin::SessionsController < ApplicationController
  # Форма входа
  def new
    # В этом методе можно оставить пустым или определить какую-то логику
  end

  # Обработка входа
  def create
    # Поиск пользователя по email
    @user = User.find_by(email: params[:email])

    # Проверка пароля и статуса администратора
    if @user&.authenticate(params[:password]) && @user.admin?
      # Сохраняем пользователя в сессии
      session[:user_id] = @user.id
      # Перенаправление на страницу админ-панели
      redirect_to admin_dashboard_path, notice: "Welcome, admin!"
    else
      # Сообщение об ошибке, если что-то не так
      flash.now[:alert] = "Invalid credentials or not an admin"
      render :new
    end
  end

  # Выход из системы
  def destroy
    # Удаляем пользователя из сессии
    session.delete(:user_id)
    redirect_to root_path, notice: "Logged out"
  end
end
