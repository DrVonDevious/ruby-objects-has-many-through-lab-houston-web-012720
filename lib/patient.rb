class Patient

  attr_accessor :name, :doctors, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @doctors = []
    @patients = []
    @@all << self
  end

  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments 
    Appointment.all.select { |appointment| appointment.patient == self }
  end

  def doctors 
    arr = self.appointments.map { |appointment| appointment.doctor }
    arr.uniq
  end  

end

