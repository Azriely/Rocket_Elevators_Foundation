# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

10.times do
    customers = Customer.new(
        company_name: Faker::Company.name,
        company_headquarters_address: Faker::Address.full_address,
        full_name_of_company_contact: Faker::Company.name,
        company_contact_phone: Faker::PhoneNumber.phone_number,
        email_of_the_company_contact: Faker::Internet.email,
        company_description: Faker::Company.type,
        full_name_of_service_technical_authority: Faker::Company.name,
        technical_authority_phone_for_service: Faker::PhoneNumber.phone_number,
        technical_manager_email_for_service: Faker::Internet.email
        )
    customers.save
end


employees = [
    {
        first_name: 'Nicolas',
        last_name: 'Genest',
        title: 'CEO',
        email: 'nicolas.genest@codeboxx.biz'
    },
    {
        first_name: 'Nadya',
        last_name: 'Fortier',
        title: 'Director',
        email: 'nadya.fortier@codeboxx.biz'
    },
    {
        first_name: 'Martin',
        last_name: 'Chantal',
        title: 'Director Assistant',
        email: 'martin.chantal@codeboxx.biz'
    },
    {
        first_name: 'Mathieu',
        last_name: 'Houde',
        title: 'Captain',
        email: 'mathieu.houde@codeboxx.biz'
    },
    {
        first_name: 'Patrick ',
        last_name: 'Thibault',
        title: 'Captain',
        email: 'patrick.thibault@codeboxx.biz'
    },
    {
        first_name: 'David',
        last_name: 'Boutin',
        title: 'Engineer',
        email: 'david.boutin@codeboxx.biz'
    },
    {
        first_name: 'Mathieu',
        last_name: 'Lortie',
        title: 'Engineer',
        email: 'mathieu.lortie@codeboxx.biz'
    },
    {
        first_name: 'Thomas',
        last_name: 'Carrier',
        title: 'Engineer',
        email: 'thomas.carrier@codeboxx.biz'
    },
    {
        first_name: 'Serge',
        last_name: 'Savoie',
        title: 'Engineer',
        email: 'serge.savoie@codeboxx.biz'
    },
    {
        first_name: 'Francis',
        last_name: 'Patry-Jessop',
        title: 'Engineer',
        email: 'francis.patry-jessop@codeboxx.biz'
    },
    {
        first_name: 'Mathieu',
        last_name: 'Lefrancois',
        title: 'Engineer',
        email: 'mathieu.lefrancois@codeboxx.biz'
    },
    {
        first_name: 'David',
        last_name: 'Larochelle',
        title: 'Engineer',
        email: 'david.larochelle@codeboxx.biz'
    },
    {
        first_name: 'Nicolas',
        last_name: 'Pineault',
        title: 'Engineer',
        email: 'nicolas.pineault@codeboxx.biz'
    },
    {
        first_name: 'David',
        last_name: 'Amyot',
        title: 'Engineer',
        email: 'david.amyot@codeboxx.biz'
    },
    {
        first_name: 'Remi',
        last_name: 'Gagnon',
        title: 'Engineer',
        email: 'remi.gagnon@codeboxx.biz'
    },
    {
        first_name: 'Timothy',
        last_name: 'Wever',
        title: 'Developer',
        email: 'timothy.wever@codeboxx.biz'
    },
    {
        first_name: 'Kiril',
        last_name: 'Kleinerman',
        title: 'Developer',
        email: 'kiril.kleinerman@codeboxx.biz'
    },
    {
        first_name: 'Emmanuela',
        last_name: 'Derilus',
        title: 'Developer',
        email: 'emmanuela.derilus@codeboxx.biz'
    },
    {
        first_name: 'Abdul',
        last_name: 'Akeeb',
        title: 'Developer',
        email: 'abdul.akeeb@codebozz.biz'
    },
    {
        first_name: 'Krista',
        last_name: 'Sheely',
        title: 'Developer',
        email: 'krista.sheely@codeboxx.biz'
    },
    {
        first_name: 'Jonathan',
        last_name: 'Murray',
        title: 'Developer',
        email: 'jonathan.murray@codeboxx.biz'
    }
    
]


# <Model>.create({ key: value })
# <Model>.create({ "key" => value })
# <Model>.create( key: value )
    
employees.each do |employee|
    user = User.create!(
        first_name: employee[:first_name],
        last_name: employee[:last_name],
        phone_number: 1112223333,
        email: employee[:email],
        password: "codeboxx1",
        is_admin: TRUE, 
    )


    Employee.create!(
        first_name: employee[:first_name],
        last_name: employee[:last_name],
        title: employee[:title],
        email: employee[:email],
        user: user   
    )
end

puts "Seeding Done!"
