class Patient

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def new_appointment(date, doctor)
    appointment = Appointment.new(date, self, doctor)
  end
end
