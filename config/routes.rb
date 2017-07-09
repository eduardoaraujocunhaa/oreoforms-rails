Rails.application.routes.draw do
  resources :block_of_answers
  resources :answers
  resources :block_of_questions
  resources :kind_of_questions
  resources :questions
  resources :questionaries
  devise_for :users, :controllers => {
    :omniauth_callbacks => "callbacks"
  }

  devise_scope :user do
    authenticated :user do
      root :to => 'home#index'
    end
    unauthenticated :user do
      root :to => 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
