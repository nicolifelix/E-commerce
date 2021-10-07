FactoryBot.define do
  factory :game do
    mode { [:pvp, :pve, :both].sample }
    release_date { "2021-10-07 12:13:06" }
    developer { Faker::Company.name }
    system_requirement 
  end
end
