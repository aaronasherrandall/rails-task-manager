Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # for listing tasks
  get 'tasks', to: 'tasks#index', as: 'tasks'

  # for adding a new task
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create'

  # for the details of a task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # for editing a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'

  # for removing a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
