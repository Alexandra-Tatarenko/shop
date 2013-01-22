class Product < ActiveRecord::Base

  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  attr_accessible :description, :image_url, :price, :title

  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates_length_of :title, :within => 6..10, :too_long => "pick a shorter name!!!", :too_short => "pick a longer name!!!"
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)$}i,
    message: 'You can use only GIF, JPG or PNG.'
  }

  private

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, "exists things")
      return false
    end
  end


end
