class ApplicationController < ActionController::Base
    def authorize_request(kind = nil)
        unless kind.include?(current_user.role)
        redirect_to publications_path, notice: "No estas autorizado para esta acción"
        end
    end
       
end
