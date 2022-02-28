class RegistrationsController < ApplicationController

    def new
    @user = User.new #yeni bir kullanıcı oluşturuyoruz
    end

end