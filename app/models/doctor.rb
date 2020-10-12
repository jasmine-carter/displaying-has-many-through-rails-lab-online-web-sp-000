class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments


  def app_time
    self.appointment.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end

end
