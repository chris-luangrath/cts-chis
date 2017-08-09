module CurrentUserConcern
   extend ActiveSupport::Concern
   
    def current_user
        super || guest_user
    end
  
    def guest_user
        guest = GuestUser.new
        guest.name = "Guest User"
        guest.firt_name = "Guest"
        guest.last_name = "User"
        guest.email = "guest@examle.com"
        guest
    end
  
end