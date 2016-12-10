class BirthCertificate < ActiveRecord::Base
  belongs_to :person
  before_create :assign_date_of_issue

  private
  def assign_date_of_issue
    self.date_of_issue = Time.now
  end
end
