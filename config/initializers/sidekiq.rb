schedule_file = Rails.root.join("config", "sidekiq_cron.yml")

return nil if !File.exists?(schedule_file) || !Sidekiq.server?

Sidekiq::Cron::Job.destroy_all!
Sidekiq::Cron::Job.load_from_hash(YAML.load_file(schedule_file))


