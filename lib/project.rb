require "pry"
class Project
    attr_reader :title
    attr_accessor :backer, :projectbacker

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
       backers_array = ProjectBacker.all.select{ |backer| backer.project == self}
       backers_array.map{ |name| name.backer}
    end

end

#patient(project) has many doctors(backers), through appointments(project backers)
#Patient(project)

#def appointments
 #   Appointment.all.select {|appointment| appointment.patient == self}
#end