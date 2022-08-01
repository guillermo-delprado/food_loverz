# Preview all emails at http://localhost:3000/rails/mailers/review_mailer
class ReviewMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/review_mailer/new_response
  def new_response

    review = Review.first
    comment = review.comments.first
  
    ReviewMailer.with(review: review, comment: comment).new_response
  end

end
