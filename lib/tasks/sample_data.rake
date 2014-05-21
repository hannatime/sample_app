namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
  end
end

def make_users
  admin = User.create!(name:     "Ben Hanna",
                       email:    "ben@hooha.com.au",
                       password: "Benjam2n",
                       password_confirmation: "Benjam2n",
                       admin: true)
end

