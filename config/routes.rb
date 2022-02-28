Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # GET/about
  get "about", to: "about#index"  #about isimli sayfamız
  root  to: "main#index" #anasayfamız
  # get => bunun bir get isteği, route'u olduğunu söylüyor.
  # about => prefix'tir Yani example.com/about a get isteği gelirse bunu AboutController'daki index function'a yönlendir demek.
  # ana domain adından sonra (example.com) /about gelirse AbputController'da index function çalışıyor ve orada renderlama vs. yapılıyor.
  # routes.rb kısmında bir haritalama yapılıyor aslında.
 
  get "sign_up", to: "registrations#new"

  #Tarayıcıdan buna veri gönderdiğimiz ve onu yaratmaya göndereceğimiz bir gönderi isteği
  post "sign_up", to:"registrations#create"
end
 