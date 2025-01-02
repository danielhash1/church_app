class Post < ApplicationRecord
    has_many_attached :images
  
    validates :title, presence: true
    validates :description, presence: true
    validates :author_name, presence: true
    validates :author_email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  end
  