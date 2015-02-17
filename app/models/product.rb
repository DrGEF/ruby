class Product < ActiveRecord::Base
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates_length_of :title, minimum: 10, massage: 'Заголовок должен быть больше 10 симоволов'

  validates :image_url, allow_blank: true, format: {
                          with: %r{\.(gif|jpg|png)\Z}i,
                          massage: 'Url должен указывать на изображение в формате jpg,png или gif.'
                      }
end
