class WeeklyEmailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    NotificationMailer.homes_update(Home.all)
    Rails.logger.debug "#{self.class.name}: I'm performing my job with arguments: #{args.inspect}"
  end
end
