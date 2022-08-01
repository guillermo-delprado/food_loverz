class ReviewMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.review_mailer.new_response.subject
  #
  def new_response
    
    @comment = params[:comment]
    @review = params[:review]

    mail to: @review.user.email, subject: "New reponse on #{@review.title} via webbit"
 
  end
end
