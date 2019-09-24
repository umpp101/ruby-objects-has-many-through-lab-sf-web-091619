class Doctor
    attr_reader :name
    @@all =[]
    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |el|
            el.doctor == self
        end
    end

    def new_appointment(date, patient)
        # binding.pry
        Appointment.new(patient, date, self)
    end

    def patients 
        appointments.map do |el|
            # binding.pry
            el.patient 
        end
    end





end
