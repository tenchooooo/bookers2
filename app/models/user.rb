class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :books, dependent: :destroy
  validates :name, presence: true, uniqueness: true, length: { minimum: 2,maximum: 20 }
  validates :user_introduction, length: {maximum: 50 }
  



  has_one_attached :user_icon

  def get_user_icon(width, height)
    unless user_icon.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      user_icon.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    user_icon.variant(resize_to_limit: [width, height]).processed
  end
end
