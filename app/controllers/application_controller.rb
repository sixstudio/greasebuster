class ApplicationController < ActionController::Base
 protect_from_forgery
 layout :layout_type
 
 private
 
 def admin_namespace?
   params[:controller].match(/admin/)
 end
 
 def layout_type
   if admin_namespace?
     return "admin"
   else
     return "application"
   end
 end
end
