json.extract! @project, :name
json.task @task, :id, :date, :description, :status
json.message "task created successfully"
