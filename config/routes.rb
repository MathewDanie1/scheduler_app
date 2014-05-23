SchedulerApp::Application.routes.draw do

root :to => 'programs#index'

resources :users, :programs, :campuses, :cohorts, :classrooms, :bookings, :courses, :enrollments, :teaching_assignments
 


get "/login", to: 'sessions#new', as: "login"
delete "/logout", to: "sessions#destroy", as: "logout"

resources :sessions, only: [:new, :create, :destroy]

end

