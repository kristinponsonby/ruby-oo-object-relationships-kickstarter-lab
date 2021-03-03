require "pry"
class Backer

    attr_reader :name
    attr_accessor :project, :projectbacker

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
        
    def backed_projects
        backed_projects = ProjectBacker.all.select{ |project| project.backer == self}
        backed_projects.map{ |title| title.project}
    end

end


#def appointments
    #Appointment.all.select{ |appointment| appointment.doctor == self}
#end

#def patients
  #  appointments.map do |appointment|
 #       appointment.patient
   #     end