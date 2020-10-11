class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def doctor_name
    self.doctor.name
  end

  def patient_name
    self.patient.name
  end

  def format_time
    self.appointment_datetime.to_formatted_s(:long)
  end
end
