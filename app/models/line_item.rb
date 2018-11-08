class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  has_many :line_items, dependent: :destroy

  def total_price
    product.price * quantity
  end
end
