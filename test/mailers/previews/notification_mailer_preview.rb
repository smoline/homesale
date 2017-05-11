# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview
   # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/signup_email
  def signup_email
    NotificationMailer.signup_email(User.first)
  end

   # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/home_favorited_email
  def home_favorited_email
    NotificationMailer.home_favorited_email(Home.last, User.last)
  end

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/homes_update
 def homes_update
   NotificationMailer.homes_update(Home.all, User.all)
 end

end
