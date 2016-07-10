class UserMailer < ActionMailer::Base
    default :from => "Poobr"

 def registration_confirmation(user)
    @user = user
    email_with_name = %("#{@user.name}" <#{@user.email}>)
    mail(to: email_with_name, subject: 'Registration Confirmation')
 end
 end
