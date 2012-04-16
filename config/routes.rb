Todoapp::Application.routes.draw do
  resources :todos do
    post :complete, on: :member
    get :all, on: :collection
  end
  root to: "todos#index"
end
