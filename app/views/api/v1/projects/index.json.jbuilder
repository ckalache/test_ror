json.array! @projects do |project|
  json.extract! project, :name
  #json.tasks project.tasks do |task|
    #json.extract! task, :id, :date, :description, :status
  #end
end
