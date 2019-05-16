class ExampleMailer < ApplicationMailer
  default from: "from@example.com"
  def sample_email(template)
    @template = template
    mail(to: @template[:email], subject: 'Sample Email')
    puts 'something'
  end
end
