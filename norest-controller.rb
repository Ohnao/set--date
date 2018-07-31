class ApplicationController < ActionController::Base
  class AdminController
    def users
        if not params[:operation].nil?
          if params[:operation] == "reset_password"
          end
          if params[:operation] == "activate_user"
          end
          if params[:operation] == "show_user"
          end
        end
      user_order = 'username'
      if not params[:user_sort_field].nil?
        user_order = params[:user_sort_field]
      end
    end
  end
end
