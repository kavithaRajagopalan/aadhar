class Person < ActiveRecord::Base
  before_save :generate_aadhar_number
  validates :name, presence: true
  has_one :certificate

  private
  def generate_aadhar_number
    self.aadharNum = (rand(10 ** 11) + Time.now.hash.abs.to_s[0..8].to_i).to_s
  end
end
