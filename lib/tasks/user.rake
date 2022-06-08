namespace :user do
  desc "This task will update all users in my database"
  task update_all: :environment do
    users = User.all
    puts "Enqueuing update of #{users.size} users..."
    users.each do |user|
      UpdateUserJob.perform_later(user.id)
    end
  end

end
