API V1 Documentation

Projects

Get all Projects
- GET request
- url: /api/v1/projects
- returns an array with all the current
projects registered in database. Each
object in the array has 1 key, which is the "name" attribute of the project

Show a Project
- GET request
- url: /api/v1/projects/:id
- returns an object with 2 keys:
  - the "name" attribute of the project
  - a key "tasks" and it's value an array of all the tasks that belong to this especific project. Each object in the array has 4 keys, the "id", "date", "description" and "status" of the correspondent task

Create a Project
- POST request
- url: /api/v1/projects
- the body has to be an object in which the key
is project's attribute "name"

Update a Project
- PATCH request
- url: /api/v1/projects/:id
- the body has to be an object in which the key
is project's attribute to be updated

Delete a Project
- DELETE request
- url: /api/v1/projects/:id

Tasks

Create a Task
- POST request
- url: /api/v1/projects/:project_id/tasks
- the body has to be an object in which the keys
are the tasks's attributes "date" and "description". When a task is created, the status default is always false

Update a Task
- PATCH request
- url: /api/v1/tasks/:id
- the body has to be an object in which the keys
are task's attributes to be updated

Delete a Task
- DELETE request
- url: /api/v1/tasks/:id

