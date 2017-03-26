class ExternalService::SidekiqService
  def is_running?
    !::Sidekiq::ProcessSet.new.size.zero? rescue false
  end
end
