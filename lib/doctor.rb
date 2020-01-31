class Doctor 

  attr_accessor :name, :appointments, :patients

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@all << self
  end

  def self.all
    @@all
  end 

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments 
    Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def patients 
    arr = self.appointments.map { |appointment| appointment.patient }
    arr.uniq
  end  

end 

