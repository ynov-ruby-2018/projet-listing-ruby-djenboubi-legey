class HomeController < ApplicationController
 
  def index
  end

  def presentation
  end

  def login
  end

  def checkLogin

    userExist = false
    role =""

    user = User

    User.all.each do |use|
      if (params[:login] == use.name) and (params[:password] == use.password)
      userExist = true
      break
      end
    end

    if userExist
      redirect_to :controller => 'listing', :action => 'index'
    else
      puts "bad"
    end
  end

end
 
