class Medications < Applications
  def show
    @medication = Medication.find(params[:id])
    @prescriptions = @medication.prescriptions
  end
end
