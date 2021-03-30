json.extract! @project, :name
json.task @task, :id, :date, :description, :status
json.message "Tarefa criada com sucesso"
