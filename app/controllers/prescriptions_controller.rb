class PrescriptionsController < ApplicationController
  def new
    @prescription = Prescription.new
    @patient = Patient.find(params[:patient_id])
  end
end
