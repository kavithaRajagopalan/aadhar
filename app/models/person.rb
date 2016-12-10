class Person < ActiveRecord::Base
  before_create :generate_aadhar_number, :generate_birth_certificate

  validates :name, presence: true
  has_one :birth_certificate

  private
  def generate_aadhar_number
    self.aadharNum = (rand(10 ** 11) + Time.now.hash.abs.to_s[0..8].to_i).to_s
  end

  def generate_birth_certificate
    self.birth_certificate = BirthCertificate.new
  end
end
