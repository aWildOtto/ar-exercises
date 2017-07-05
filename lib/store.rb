class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer:true, greater_than: 0}
  validate :hasApparel
  validates_associated :employees

  def hasApparel
    if (!mens_apparel && !womens_apparel)
      errors.add(:base, "should have either mens or womens apparel")
    end
  end
end
