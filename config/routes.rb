# == Route Map (Updated 2014-01-08 23:13)
#
#                         Prefix Verb       URI Pattern                               Controller#Action
#                           root GET        /                                         pages#home
#                     admin_root GET        /admin(.:format)                          admin/dashboard#index
# batch_action_admin_admin_users POST       /admin/admin_users/batch_action(.:format) admin/admin_users#batch_action
#              admin_admin_users GET        /admin/admin_users(.:format)              admin/admin_users#index
#                                POST       /admin/admin_users(.:format)              admin/admin_users#create
#           new_admin_admin_user GET        /admin/admin_users/new(.:format)          admin/admin_users#new
#          edit_admin_admin_user GET        /admin/admin_users/:id/edit(.:format)     admin/admin_users#edit
#               admin_admin_user GET        /admin/admin_users/:id(.:format)          admin/admin_users#show
#                                PATCH      /admin/admin_users/:id(.:format)          admin/admin_users#update
#                                PUT        /admin/admin_users/:id(.:format)          admin/admin_users#update
#                                DELETE     /admin/admin_users/:id(.:format)          admin/admin_users#destroy
#                admin_dashboard GET        /admin/dashboard(.:format)                admin/dashboard#index
#     batch_action_admin_experts POST       /admin/experts/batch_action(.:format)     admin/experts#batch_action
#                  admin_experts GET        /admin/experts(.:format)                  admin/experts#index
#                                POST       /admin/experts(.:format)                  admin/experts#create
#               new_admin_expert GET        /admin/experts/new(.:format)              admin/experts#new
#              edit_admin_expert GET        /admin/experts/:id/edit(.:format)         admin/experts#edit
#                   admin_expert GET        /admin/experts/:id(.:format)              admin/experts#show
#                                PATCH      /admin/experts/:id(.:format)              admin/experts#update
#                                PUT        /admin/experts/:id(.:format)              admin/experts#update
#                                DELETE     /admin/experts/:id(.:format)              admin/experts#destroy
#    batch_action_admin_students POST       /admin/students/batch_action(.:format)    admin/students#batch_action
#                 admin_students GET        /admin/students(.:format)                 admin/students#index
#                                POST       /admin/students(.:format)                 admin/students#create
#              new_admin_student GET        /admin/students/new(.:format)             admin/students#new
#             edit_admin_student GET        /admin/students/:id/edit(.:format)        admin/students#edit
#                  admin_student GET        /admin/students/:id(.:format)             admin/students#show
#                                PATCH      /admin/students/:id(.:format)             admin/students#update
#                                PUT        /admin/students/:id(.:format)             admin/students#update
#                                DELETE     /admin/students/:id(.:format)             admin/students#destroy
#       batch_action_admin_users POST       /admin/users/batch_action(.:format)       admin/users#batch_action
#                    admin_users GET        /admin/users(.:format)                    admin/users#index
#                                POST       /admin/users(.:format)                    admin/users#create
#                 new_admin_user GET        /admin/users/new(.:format)                admin/users#new
#                edit_admin_user GET        /admin/users/:id/edit(.:format)           admin/users#edit
#                     admin_user GET        /admin/users/:id(.:format)                admin/users#show
#                                PATCH      /admin/users/:id(.:format)                admin/users#update
#                                PUT        /admin/users/:id(.:format)                admin/users#update
#                                DELETE     /admin/users/:id(.:format)                admin/users#destroy
#    batch_action_admin_comments POST       /admin/comments/batch_action(.:format)    admin/comments#batch_action
#                 admin_comments GET        /admin/comments(.:format)                 admin/comments#index
#                                POST       /admin/comments(.:format)                 admin/comments#create
#                  admin_comment GET        /admin/comments/:id(.:format)             admin/comments#show
#         new_admin_user_session GET        /admin/login(.:format)                    active_admin/devise/sessions#new
#             admin_user_session POST       /admin/login(.:format)                    active_admin/devise/sessions#create
#     destroy_admin_user_session DELETE|GET /admin/logout(.:format)                   active_admin/devise/sessions#destroy
#            admin_user_password POST       /admin/password(.:format)                 active_admin/devise/passwords#create
#        new_admin_user_password GET        /admin/password/new(.:format)             active_admin/devise/passwords#new
#       edit_admin_user_password GET        /admin/password/edit(.:format)            active_admin/devise/passwords#edit
#                                PATCH      /admin/password(.:format)                 active_admin/devise/passwords#update
#                                PUT        /admin/password(.:format)                 active_admin/devise/passwords#update
#            new_student_session GET        /students/sign_in(.:format)               sessions#new
#                student_session POST       /students/sign_in(.:format)               sessions#create
#        destroy_student_session DELETE     /students/sign_out(.:format)              sessions#destroy
#               student_password POST       /students/password(.:format)              devise/passwords#create
#           new_student_password GET        /students/password/new(.:format)          devise/passwords#new
#          edit_student_password GET        /students/password/edit(.:format)         devise/passwords#edit
#                                PATCH      /students/password(.:format)              devise/passwords#update
#                                PUT        /students/password(.:format)              devise/passwords#update
#    cancel_student_registration GET        /students/cancel(.:format)                students/registrations#cancel
#           student_registration POST       /students(.:format)                       students/registrations#create
#       new_student_registration GET        /students/sign_up(.:format)               students/registrations#new
#      edit_student_registration GET        /students/edit(.:format)                  students/registrations#edit
#                                PATCH      /students(.:format)                       students/registrations#update
#                                PUT        /students(.:format)                       students/registrations#update
#                                DELETE     /students(.:format)                       students/registrations#destroy
#             new_expert_session GET        /experts/sign_in(.:format)                sessions#new
#                 expert_session POST       /experts/sign_in(.:format)                sessions#create
#         destroy_expert_session DELETE     /experts/sign_out(.:format)               sessions#destroy
#                expert_password POST       /experts/password(.:format)               devise/passwords#create
#            new_expert_password GET        /experts/password/new(.:format)           devise/passwords#new
#           edit_expert_password GET        /experts/password/edit(.:format)          devise/passwords#edit
#                                PATCH      /experts/password(.:format)               devise/passwords#update
#                                PUT        /experts/password(.:format)               devise/passwords#update
#     cancel_expert_registration GET        /experts/cancel(.:format)                 experts/registrations#cancel
#            expert_registration POST       /experts(.:format)                        experts/registrations#create
#        new_expert_registration GET        /experts/sign_up(.:format)                experts/registrations#new
#       edit_expert_registration GET        /experts/edit(.:format)                   experts/registrations#edit
#                                PATCH      /experts(.:format)                        experts/registrations#update
#                                PUT        /experts(.:format)                        experts/registrations#update
#                                DELETE     /experts(.:format)                        experts/registrations#destroy
#               new_user_session GET        /users/sign_in(.:format)                  devise/sessions#new
#                   user_session POST       /users/sign_in(.:format)                  devise/sessions#create
#           destroy_user_session DELETE     /users/sign_out(.:format)                 devise/sessions#destroy
#                  user_password POST       /users/password(.:format)                 devise/passwords#create
#              new_user_password GET        /users/password/new(.:format)             devise/passwords#new
#             edit_user_password GET        /users/password/edit(.:format)            devise/passwords#edit
#                                PATCH      /users/password(.:format)                 devise/passwords#update
#                                PUT        /users/password(.:format)                 devise/passwords#update
#                         signup GET        /signup(.:format)                         students/registrations#new
#                         signin GET        /signin(.:format)                         sessions#new
#                        signout DELETE     /signout(.:format)                        sessions#destroy
#                  profile_users GET        /users/profile(.:format)                  users#profile
#                          users GET        /users(.:format)                          users#index
#                                POST       /users(.:format)                          users#create
#                       new_user GET        /users/new(.:format)                      users#new
#                      edit_user GET        /users/:id/edit(.:format)                 users#edit
#                           user GET        /users/:id(.:format)                      users#show
#                                PATCH      /users/:id(.:format)                      users#update
#                                PUT        /users/:id(.:format)                      users#update
#                                DELETE     /users/:id(.:format)                      users#destroy
#                       requests GET        /requests(.:format)                       requests#index
#                                POST       /requests(.:format)                       requests#create
#                    new_request GET        /requests/new(.:format)                   requests#new
#                   edit_request GET        /requests/:id/edit(.:format)              requests#edit
#                        request GET        /requests/:id(.:format)                   requests#show
#                                PATCH      /requests/:id(.:format)                   requests#update
#                                PUT        /requests/:id(.:format)                   requests#update
#                                DELETE     /requests/:id(.:format)                   requests#destroy
#

CodePairs::Application.routes.draw do
  
  root 'pages#home'

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :students, controllers: { registrations: "students/registrations", sessions: 'sessions'}
  devise_for :experts, controllers:  { registrations: "experts/registrations", sessions: 'sessions'}
  devise_for :users, skip: :registrations

 devise_scope :student do
    get 'signup', to: 'students/registrations#new'
  end

  devise_scope :student do
    get 'signin', to: 'sessions#new'
    match 'signout', to: 'sessions#destroy', via: [:delete]
  end

  resources :users do
    collection do
      get 'profile', to: "users#profile", as: 'profile', shallow: true
    end
  end

  resources :requests

end
