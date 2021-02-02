class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: { in: 1...60000 }
  before_create :build_password

  private

  def build_password
    self.password = SecureRandom.hex 4
  end

end
