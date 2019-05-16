class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(template, template_yaml)
    ExampleMailer.sample_email(template, template_yaml).deliver_later
  end
end
