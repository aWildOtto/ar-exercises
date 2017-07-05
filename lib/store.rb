class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer:true, greater_than: 0}
  validate :has_apparel
  validates_associated :employees

  before_destroy :check_employee

  private
  def has_apparel
    if (!mens_apparel && !womens_apparel)
      errors.add(:base, "should have either mens or womens apparel")
    end
  end

  def check_employee
    if (self.employees.length > 0)
      errors.add(:base, "can't destroy a store with employees in it")
      return false
    end
  end
  
end
