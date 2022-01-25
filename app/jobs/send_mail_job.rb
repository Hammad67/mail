class SendMailJob < ApplicationJob
  queue_as :default

  def perform(users)



    UserMailer.with(user: users).welcome_email.deliver_now
    # Do something later
  end
end
