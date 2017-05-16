Rails.application.routes.draw do
  resources :questionaries
  resources :block_of_answers
  resources :answers
  resources :block_of_questions
  resources :questions
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root :to => 'questionaries#index'
    end
    unauthenticated :user do
      root :to => 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
