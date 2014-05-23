[User, Program, Campus, Cohort, Classroom, Booking, Course, Enrollment, TeachingAssignment].each { |model| model.delete_all }

jon = User.create!(
  :name   => "jon",
  :email  => "jon@jon.com",
  :password => "jon",
  :bio  => "originally from Bolton",
  :role => "instructor",
  :phone => "07777 555555",
)

gerry = User.create!(
  :name   => "gerry",
  :email  => "gerry@gerry.com",
  :password => "gerry",
  :password_confirmation => "gerry",
  :bio  => "originally from Paris",
  :role => "instructor",
  :phone => "07777 777777",
)

tim = User.create!(
  :name   => "tim",
  :email  => "tim@tim.com",
  :password => "tim",
  :password_confirmation => "tim",
  :bio  => "graduate of WDI",
  :role => "instructor",
  :phone => "07777 999999",
)

julien = User.create!(
  :name   => "julien",
  :email  => "julien@julien.com",
  :password => "julien",
  :password_confirmation => "julien",
  :bio  => "WDI producer based in London",
  :role => "producer",
  :phone => "07777 101010",
)

 md = User.create!(
  :name   => "MD",
  :email  => "math@math.com",
  :password => "md",
  :password_confirmation => "md",
  :bio    => "from Cardiff, lives in London",
  :role   => "student",
  :phone  => "07777 111111",
)

  matt = User.create!(
  :name   => "matt",
  :email  => "matt@matt.com",
  :password => "matt",
  :password_confirmation => "matt",
  :bio    => "from Cambridge",
  :role   => "student",
  :phone  => "07777 222222",
)

 george = User.create!(
  :name   => "george",
  :email  => "george@george.com",
  :password => "george",
  :password_confirmation => "george",
  :bio    => "from London",
  :role   => "student",
  :phone  => "07777 111111",
)

 jill = User.create!(
  :name   => "jill",
  :email  => "jill@jill.com",
  :password => "jill",
  :password_confirmation => "jill",
  :bio    => "from the USofA",
  :role   => "student",
  :phone  => "07777 111111",
)

 rose = User.create!(
  :name   => "rose",
  :email  => "rose@rose.com",
  :password => "rose",
  :password_confirmation => "rose",
  :bio    => "from Canada, going to Harvard via London",
  :role   => "student",
  :phone  => "7777111111",
)

 caroline = User.create!(
  :name   => "caroline",
  :email  => "caroline@caroline.com",
  :password => "caroline",
  :password_confirmation => "caroline",
  :bio    => "studying in London",
  :role   => "student",
  :phone  => "7777111111",
)

wdi = Program.create!(
  :name           => 'Web Development Immersive',
  :description    => "Twelve weeks. All day. Every day."
)

uxi = Program.create!(
  :name           => 'User Experience Design Immersive',
  :description    => "Ten weeks. All day. Every day."
)

front_end = Program.create!(
  :name           => 'Front End Web Development',
  :description    => "10 week technology course"
)

back_end = Program.create!(
  :name           => 'Back End Web Development',
  :description    => "10 week technology course"
)

data_science = Program.create!(
  :name           => 'Data Science',
  :description    => "11 week technology course"
)

produce_management = Program.create!(
  :name           => 'Product Management',
  :description    => "10 week business course"
)

ldn = Campus.create!(
  :name           => 'London',
  :address        => "9 Back Hill, Farringdon, London"
)

sf = Campus.create!(
  :name           => 'San Fransisco',
  :address        => "Union Square, Frisco"
)

syd = Campus.create!(
  :name           => 'Sydney',
  :address        => "Bonza Bridge, Yabbi Creek, Sydney"
)

ldn_a = Classroom.create!(
  :name           => 'LDNa',
  :capacity       => 20,
  :campus         => ldn
)

ldn_b = Classroom.create!(
  :name           => 'LDNb',
  :capacity       => 15,
  :campus         => ldn
)

ldn_c = Classroom.create!(
  :name           => 'LDNc',
  :capacity       => 25,
  :campus         => ldn
)

sf_a = Classroom.create!(
  :name           => 'SFa',
  :capacity       => 20,
  :campus         => sf
)

sf_b = Classroom.create!(
  :name           => 'SFb',
  :capacity       => 15,
  :campus         => sf
)

sf_c = Classroom.create!(
  :name           => 'SFc',
  :capacity       => 25,
  :campus         => sf
)

syd_a = Classroom.create!(
  :name           => 'SYDa',
  :capacity       => 20,
  :campus         => syd
)

syd_b = Classroom.create!(
  :name           => 'SYDb',
  :capacity       => 15,
  :campus         => syd
)

syd_c = Classroom.create!(
  :name           => 'SYDc',
  :capacity       => 25,
  :campus         => syd
)

ldn_a_eve = Classroom.create!(
  :name           => 'LDNaEVE',
  :capacity       => 20,
  :campus         => ldn
)

ldn_b_eve = Classroom.create!(
  :name           => 'LDNbEVE',
  :capacity       => 15,
  :campus         => ldn
)

ldn_c_eve = Classroom.create!(
  :name           => 'LDNcEVE',
  :capacity       => 25,
  :campus         => ldn
)

sf_a_eve = Classroom.create!(
  :name           => 'SFaEVE',
  :capacity       => 20,
  :campus         => sf
)

sf_b_eve = Classroom.create!(
  :name           => 'SFbEVE',
  :capacity       => 15,
  :campus         => sf
)

sf_c_eve = Classroom.create!(
  :name           => 'SFcEVE',
  :capacity       => 25,
  :campus         => sf
)

syd_a_eve = Classroom.create!(
  :name           => 'SYDaEVE',
  :capacity       => 20,
  :campus         => syd
)

syd_b_eve = Classroom.create!(
  :name           => 'SYDbEVE',
  :capacity       => 15,
  :campus         => syd
)

syd_c_eve = Classroom.create!(
  :name           => 'SYDcEVE',
  :capacity       => 25,
  :campus         => syd
)

wdi_ldn = Course.create!(
  :name       => "WDI LONDON",
  :program    => wdi,
  :campus     => ldn
  )

wdi_sf = Course.create!(
  :name       => "WDI SAN FRANSISCO",
  :program    => wdi,
  :campus     => sf
  )

wdi_syd = Course.create!(
  :name       => "WDI SYDNEY",
  :program    => wdi,
  :campus     => syd
  )

uxi_ldn = Course.create!(
  :name       => "UXI LONDON",
  :program    => uxi,
  :campus     => ldn
  )

uxi_sf = Course.create!(
  :name       => "UXI SAN FRANSISCO",
  :program    => uxi,
  :campus     => sf
  )

uxi_syd = Course.create!(
  :name       => "UXI SYDNEY",
  :program    => uxi,
  :campus     => ldn
  )

back_end_syd = Course.create!(
  :name       => "Back End Sydney",
  :program    => back_end,
  :campus     => syd
  )

data_science_sf = Course.create!(
  :name       => "Data San Francisco",
  :program    => data_science,
  :campus     => sf
  )

wdi_ldn_6 = Cohort.create!(
  :name          => 'WDI_LDN_6',
  :course        => wdi_ldn,
  :start_date    => DateTime.new(2014,9,14,8),
  :end_date      => DateTime.new(2014,12,14,10)
)

wdi_ldn_7 = Cohort.create!(
  :name          => 'WDI_LDN_7',
  :course        => wdi_ldn,
  :start_date    => DateTime.new(2015,2,20,8),
  :end_date      => DateTime.new(2015,5,14,10)
)

wdi_syd_3 = Cohort.create!(
  :name          => 'WDI_SYD_3',
  :course        => wdi_syd,
  :start_date    => DateTime.new(2014,10,14,8),
  :end_date      => DateTime.new(2015,01,05,10)
)

uxi_ldn_5 = Cohort.create!(
  :name          => 'UXI_LDN_5',
  :course        => uxi_ldn,
  :start_date    => DateTime.new(2014,9,01,8),
  :end_date      => DateTime.new(2014,11,23,10)
)

uxi_sf_2 = Cohort.create!(
  :name          => 'UXI_SF_2',
  :course        => uxi_sf,
  :start_date    => DateTime.new(2014,8,01,8),
  :end_date      => DateTime.new(2014,10,20,10)
)

back_end_syd_3 = Cohort.create!(
  :name          => 'Back_End_Syd_3',
  :course        => back_end_syd,
  :start_date    => DateTime.new(2014,9,01,8),
  :end_date      => DateTime.new(2014,11,23,10)
)

md_wdi_ldn_enrol = Enrollment.create!(
  :student        => md,
  :cohort         => wdi_ldn_6,
  :pre_work_completed => true
)

md_wdi_ldn_enrol_2 = Enrollment.create!(
  :student        => md,
  :cohort         => wdi_ldn_7,
  :pre_work_completed => true
)

md_wdi_ldn_enrol_3 = Enrollment.create!(
  :student        => md,
  :cohort         => back_end_syd_3,
  :pre_work_completed => true
)

jon_wdi_ldn_teach = TeachingAssignment.create!(
  :instructor     => jon,
  :cohort         => wdi_ldn_6,
  :rate           => 300
  )

julien_first_booking = Booking.create!(
  :start_date    => DateTime.new(2014,9,14,8),
  :end_date      => DateTime.new(2014,12,14,10), 
  :producer      => julien, 
  :cohort        => wdi_ldn_6, 
  :classroom     => ldn_b
  )



