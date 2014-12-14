# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


vets = Veterinarian.create([

  {
    first_name: 'Michael',
    last_name: 'Smith',
    practice_name: 'Kindness Animal Hospital',
    phone_number: '555-928-9283',
    email_address: 'george@kindness.com',
    },
  {
    first_name: 'Rachel',
    last_name: 'Devens',
    practice_name: 'New England Wildlife Center',
    phone_number: '555-928-2751',
    email_address: 'rachel@newc.org',
  }

])

pets = Pet.create([

  {
    name: 'Fido',
    category: 'dog',
    breed: 'sheep dog',
    birthdate: '20110101',
    sex: 'male',
    adoption_date: '20110610',
    veterinarian_id: 1
  },


  {
    name: 'Beyonce',
    category: 'reptile',
    breed: 'bearded dragon',
    birthdate: '20130202',
    sex: 'female',
    adoption_date: '20110610',
    veterinarian_id: 2
  }

])


conditions = Condition.create([

  {
    name: 'diabetes',
    link_url: 'diabetes.com',
    description: 'genetic',
    pet_id: 1
  },

  {
    name: 'obesity',
    link_url: 'dogobesity.com',
    description: 'genetic',
    pet_id: 2
  }

])


