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


appointments = Appointment.create([
  {
  appointment_date: '',
  description: 'checkup',
  appt_cost: 100.0,
  pet_id: 1,
  veterinarian_id: 1
  },

  {
  appointment_date: '',
  description: 'getting shots',
  appt_cost: 40.0,
  pet_id: 1,
  veterinarian_id: 2
  },

  {
  appointment_date: '',
  description: 'not feeling well',
  appt_cost: 50.0,
  pet_id: 2,
  veterinarian_id: 2
  }

  ])


conditions = Condition.create([

  {
    name: 'diabetes',
    link_url: 'diabetes.com',
    diagnosis_date: '20120404',
    description: 'genetic',
    ongoing: true,
    pet_id: 1
  },

  {
    name: 'obesity',
    link_url: 'dogobesity.com',
    description: 'genetic',
    ongoing: true,
    pet_id: 1
  },

  {
    name: 'part of tail missing',
    description: 'from earlier injury',
    ongoing: false,
    pet_id: 2
  }

])

lengths = Length.create([
  {
    pet_id: 2,
    date_measured: '20130105',
    length_amt: 18.1,
    length_units: 'inches'
  },

  {
    pet_id: 2,
    date_measured: '20130605',
    length_amt: 20.3,
    length_units: 'inches'
  },


  {
    pet_id: 2,
    date_measured: '20140121',
    length_amt: 22,
    length_units: 'inches'
  }

  ])


weights  = Weight.create([

  {
    pet_id: 1,
    date_measured: '20130105',
    weight_amt: 24,
    weight_units: 'pounds'
  },

  {
    pet_id: 1,
    date_measured: '20130605',
    weight_amt: 26,
    weight_units: 'pounds'
  },


  {
    pet_id: 1,
    date_measured: '20140121',
    weight_amt: 28,
    weight_units: 'pounds'
  },


  {
    pet_id: 2,
    date_measured: '20130605',
    weight_amt: 21,
    weight_units: 'ounces'
  }

])

vaccinations = Vaccination.create ([
  {
    name: "rabies vaccine",
    date_given: '20140606',
    next_due: '20160306',
    pet_id: 1
  },

  {
  name: "heartworm vaccine",
  date_given: '20140606',
  next_due: '20180910',
  pet_id: 1
  }

])


medications = Medication.create([
  {
    name: 'insulin',
    rx_num: 'ABC1721',
    dose_amt: 100,
    dose_units: 'ml',
    dose_frequency: 'once per day',
    med_cost: 19.99,
    description: 'for diabetes',
    date_prescribed: '20140508',
    pet_id: 1
  },

  {
    name: 'vitamin supplement',
    rx_num: 'XYZ28347',
    dose_amt: 20,
    dose_units: 'mg',
    dose_frequency: 'twice per day',
    med_cost: 40.99,
    description: 'for general health',
    date_prescribed: '20140508',
    pet_id: 1
  }

])
