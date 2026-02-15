Rails.application.routes.draw do
  devise_for :users
  
  
  get 'tweets/hokkaido' => 'tweets#hokkaido'
  get 'tweets/tohoku' => 'tweets#tohoku'
  get 'tweets/kanto' => 'tweets#kanto'
  get 'tweets/chubu' => 'tweets#chubu'
  get 'tweets/kinki' => 'tweets#kinki'
  get 'tweets/chugoku' => 'tweets#chugoku'
  get 'tweets/shikoku' => 'tweets#shikoku'
  get 'tweets/kyushu' => 'tweets#kyushu'


   resources :tweets do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  resources :perfumes
  resources :taikendans

  

  get "supports/consultation", to: "supports#consultation", as: "supports_consultation"

  get 'supports/money', to: 'supports#money', as: 'money_support'

  get 'supports/attendance', to: 'supports#attendance', as: 'supports_attendance'

  root 'tweets#index'

  get "supports/study", to: "supports#study"
end