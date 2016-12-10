class AddDateOfIssueAndRemoveNameFromBirthCertificate < ActiveRecord::Migration
  def change
    remove_column :birth_certificates, :name
    add_column :birth_certificates, :date_of_issue, :date
  end
end
