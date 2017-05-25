class NotificationMailer < ApplicationMailer
  default from: 'notofications@homes4sale.com'

  def signup_email(user)
    @user = user
    @url  = 'http://homes4sale.com/login'
    mail(to: @user.email, subject: 'Welcome to Homes4sale')
  end

  def home_favorited_email(home, current_user)
    @user = current_user
    @home = home
    mail subject: "Your Listing was Favorited!",
              to: @home.created_by.email
  end

  def homes_update(homes)
    @homes = homes

    mail subject: "New Listings",
              to: "nobody@homes4sale.com",
             bcc: User.all.pluck(:email)
  end
end
