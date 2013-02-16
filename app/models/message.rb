class Message < ActiveRecord::Base

	Pusher.app_id = '36099'
  Pusher.key = 'e77e012c099fe30baeb6'
  Pusher.secret = 'fe45a20711be9d6de43a'

  after_create :send_to_pusher

  def send_to_pusher
    logger.info "Hi?"
    Pusher['demoChat'].trigger("message:create",self.to_json)  
  end

end
