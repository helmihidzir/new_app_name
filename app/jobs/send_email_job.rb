class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(template)
    ExampleMailer.sample_email(template).deliver_later
  end
end
