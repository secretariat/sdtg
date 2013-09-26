# -*- encoding : utf-8 -*-
Sdtg::Application.routes.draw do

  get "zakon/new"
  get "zakon/edit"
  get "zakon/list"
  get "currency/new"
  get "currency/list"
  get "currency/edit"
  get "transport/new"
  get "transport/list"
  get "transport/edit"
  get "tr/new"
  get "tr/list"
  get "tr/edit"
  get "code/new"
  get "code/list"
  get "code/show"
  get "code/edit"
  get "contacts/new"
  get "contacts/index"
  get "contacts/list"
  get "contacts/edit"
  get "contacts/destroy"
  get "contacts/show"
  get "faq/new"
  get "faq/show"
  get "faq/list"
  get "faq/edit"
  get "admin/attempt_login"
  get "admin/login"
  get "admin/logout"
  get "admin/main"
  get "admin/new"
  get "admin/create"
  get "admin/destroy"
  get "ask/new"


  root :to => 'page#index'
  resources :edizms
  resources :zapros, only: [ :new, :create ]
  resources :admin, only: [ :index, :list, :new, :create, :destroy]
  resources :faq, only: [ :index, :list, :new, :create, :destroy]
  resources :code, only: [ :index, :list, :new, :create, :destroy]
  resources :anketa, only: [ :index, :list, :new, :create, :destroy]
  match ':controller(/:action(/:id))(.:format)'
end
