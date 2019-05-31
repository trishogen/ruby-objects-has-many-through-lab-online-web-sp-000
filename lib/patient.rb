class Patient

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def new_appointment(date, doctor)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end

end
