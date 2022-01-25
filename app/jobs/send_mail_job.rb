class SendMailJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    UserMailer.with(user_id).welcome_email.deliver_now

    # Do something later
  end

end
