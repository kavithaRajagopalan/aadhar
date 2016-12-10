class RenameCertificateToBirthCertificate < ActiveRecord::Migration
  def change
    rename_table :certificates, :birth_certificates
  end
end
