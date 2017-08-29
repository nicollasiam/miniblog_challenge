FactoryGirl.define do
  factory :user do
    email 'regular@user.com'
    password '123456'
    password_confirmation '123456'

    factory :admin do
      admin true
    end
  end
end
