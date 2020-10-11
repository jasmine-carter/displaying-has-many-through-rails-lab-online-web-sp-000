class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def doctor_name
    self.doctor.name
  end
end
