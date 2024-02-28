# frozen_string_literal: true

class Publisher
  def self.publish(queue_name, message = {})
    channel = connection.create_channel
    queue = channel.queue(queue_name, durable: true)
    queue.publish(message.to_json)
    channel.close
  end

  def self.connection
    @connection ||= Bunny.new(hostname: ENV['RABBITMQ_HOSTNAME'],
                              username: ENV['RABBITMQ_USERNAME'],
                              password: ENV['RABBITMQ_PASSWORD'])
                         .tap(&:start)
  end
end
