class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than: 0}
  before_destroy :destructible?

  def destructible?
    !(self.employees.size > 0)
  end
end
