class UserMailer < ActionMailer::Base
    default :from => "Poobr"

 def registration_confirmation(user)
    @user = user
    email_with_name = %("#{@user.name}" <#{@user.email}>)
    mail(to: email_with_name, subject: 'Registration Confirmation')
 end

def password_reset(user)
    @user = user
    email_with_name = %("#{@user.name}" <#{@user.email}>)
    mail(to: email_with_name, subject: 'Password Reset Request')

end

def password_new(user)
    @user = user
    email_with_name = %("#{@user.name}" <#{@user.email}>)
    mail(to: email_with_name, subject: 'Your new password')

end


 end
