class UserMailer < ApplicationMailer
    def welcome(user)

        @user = user
        mail(to: user.email,subject: "Welcome Email")


    end

    def report(filepath, filename)
        emails= ["test@gmail.com"]
        attachments[filename] = File.read(filepath)
        mail(to: emails,subject: "Posts Report")
      
    end
end