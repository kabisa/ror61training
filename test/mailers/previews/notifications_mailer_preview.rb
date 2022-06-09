# Preview all emails at http://localhost:3000/rails/mailers/notifications_mailer
# test/mailers/previews/notifications_mailer_preview.rb
class NotificationsMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/notifications_mailer/new_comment
  def new_comment
    body = %(
      <h1>Nec vero alia sunt quaerenda contra Carneadeam illam sententiam.</h1>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. <b>In schola desinis.</b> <i>Duo Reges: constructio interrete.</i> Quis enim redargueret? Falli igitur possumus. Quid iudicant sensus? </p>
      <h2>Satisne ergo pudori consulat, si quis sine teste libidini pareat?</h2>
      <p>Quis hoc dicit? <b>Audeo dicere, inquit.</b> <a href='http://loripsum.net/' target='_blank'>Zenonis est, inquam, hoc Stoici.</a> <i>Eaedem enim utilitates poterunt eas labefactare atque pervertere.</i> <a href='http://loripsum.net/' target='_blank'>Traditur, inquit, ab Epicuro ratio neglegendi doloris.</a> Certe non potest. </p>
    ).gsub(/\s+/, ' ')

    NotificationsMailer
      .with(comment: Comment.new(body: body))
      .new_comment
  end
end
