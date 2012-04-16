Todoapp::Application.routes.draw do
  resources :todos do
    post :complete, on: :member
  end
  root to: "todos#index"
end
