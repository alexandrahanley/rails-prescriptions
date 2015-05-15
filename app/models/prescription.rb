class Prescription < ActiveRecord::Base
  belongs_to :user
  belongs_to :patient
  belongs_to :medication

  validates_presence_of :medication_id, :dosage, :schedule, :starts_on, :ends_on, :patient_id
  validate :end_date_is_after_start_date
  validates_format_of :dosage, :with => /^(1|2)[a-zA-Z]?/, :on => :create, :multiline => true

  private


  def end_date_is_after_start_date
    return if ends_on.blank? || starts_on.blank?

    if ends_on < starts_on
      errors.add(:end_date, "cannot be before the start date")
    end
  end
end
