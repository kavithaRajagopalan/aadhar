class BirthCertificatesController < ApplicationController
  def show

    @cert = BirthCertificate.find(params[:id])
    @person = Person.find(@cert.person)
  end
end
