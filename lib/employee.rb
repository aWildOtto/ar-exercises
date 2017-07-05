class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates :store, presence: true

  before_create :create_password
  # after_create :create_password

  private

  def create_password
    # self.update_attributes(password: rand(36**8).to_s(36))
    self.password =  rand(36**8).to_s(36)
  end
end
