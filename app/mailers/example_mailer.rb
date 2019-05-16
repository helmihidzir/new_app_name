class ExampleMailer < ApplicationMailer
  default from: "from@example.com"
  def sample_email(template, template_yaml)
    @template = template
    mail(to: @template[:email], subject: template_yaml[(template[:id]).to_s]['title'],
    template_name: template_yaml[(template[:id]).to_s]['filename'])
  end
end
