#!/usr/bin/env ruby

require 'yaml'
require 'csv'
require 'net/smtp'

class SubscriberEmailer
  def initialize(file_path)
    @file_path = file_path
    @subscribers = load_subscribers
  end

  def load_subscribers
    if @file_path.end_with?('.yml')
      YAML.load_file(@file_path)['subscribers']
    elsif @file_path.end_with?('.csv')
      CSV.read(@file_path, headers: true).map(&:to_h)
    end
  end

  def send_updates(subject, message)
    @subscribers.each do |subscriber|
      send_email(subscriber['email'], subject, message)
    end
  end

  def send_email(to, subject, body)
    # Use your email provider (SendGrid, Mailgun, etc.)
    puts "Sending email to #{to}"
    # Implementation depends on email service
  end
end

# Usage
emailer = SubscriberEmailer.new('subscribers.yml')
emailer.send_updates('Update Title', 'Your message here')