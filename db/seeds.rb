# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "SEEDING HAS BEGUN"

SalespersonOrganization.destroy_all
Organization.destroy_all
Contact.destroy_all
Salesperson.destroy_all
Note.destroy_all
Activity.destroy_all
Opportunity.destroy_all

SalespersonOrganization.reset_pk_sequence
Contact.reset_pk_sequence
Organization.reset_pk_sequence
Salesperson.reset_pk_sequence
Note.reset_pk_sequence
Activity.reset_pk_sequence
Opportunity.reset_pk_sequence

sp1 = Salesperson.create(first_name:"Henry", last_name:"Velasquez", username:"hvelas93", password:"abc123", employer:"Hank Vella Trading Group", annual_sales_goal:"14000000", why_description:"To Get This Bread, Sucka")
sp1 = Salesperson.create(first_name:"Glynne", last_name:"Shotwell", username:"gshotwellx", password:"abc123", employer:"Space X", annual_sales_goal:"140000000", why_description:"To Make Space X a Monopoly")

org1 = Organization.create(organization_name:"Blue Origin", employee_count:3500, industry:"Aerospace", headquarter_address:"21218 76th Avenue South, Kent, WA 98032 USA")
org2 = Organization.create(organization_name:"BAE Systems", employee_count:40000, industry:"Aerospace", headquarter_address:"1101 Wilson Blvd Suite 2000, Arlington, VA 22209 USA" )
org3 = Organization.create(organization_name:"Lockheed Martin", employee_count:110000, industry:"Aerospace", headquarter_address:"6801 Rockledge Dr, Bethesda, MD 20817 USA" )
org4 = Organization.create(organization_name:"Northrop Grumman", employee_count:100000, industry:"Aerospace", headquarter_address:"2980 Fairview Park Drive, West Falls Church, VA 22042 USA" )
org5 = Organization.create(organization_name:"NASA", employee_count:17000, industry:"Astronautics", headquarter_address:"300 E Street SW, Washington DC, 20024" )

so1 = SalespersonOrganization.create(salesperson_id:1, organization_id:2)
so2 = SalespersonOrganization.create(salesperson_id:2, organization_id:1)
so3 = SalespersonOrganization.create(salesperson_id:2, organization_id:3)
so4 = SalespersonOrganization.create(salesperson_id:2, organization_id:4)
so5 = SalespersonOrganization.create(salesperson_id:2, organization_id:5)

opp1 = Opportunity.create(opp_title:"New Lunar Lander Contract", organization_id:5, contact_person:"Shivanjli Sharma", value:2900000000, stage:"Negotiate", expected_close:"2021-07-20")
opp2 = Opportunity.create(opp_title:"4 Year-2in. Retroreflector Contract", organization_id:3, contact_person:"Bruce Optico", value:30000000, stage:"Propose", expected_close:"2021-08-01")
opp3 = Opportunity.create(opp_title:"Classified EMF Defense System", organization_id:4, contact_person:"Johnny Rockets", value:40000000, stage:"Qualify", expected_close:"2021-09-20")
opp4 = Opportunity.create(opp_title:"NASA JPL - Propulsion System Collaboration", organization_id:5, contact_person:"Spacatia Explora", value:1500000, stage:"Target", expected_close:"2021-10-25")
opp5 = Opportunity.create(opp_title:"Jeff Bezo's Custom Rocketship Office", organization_id:1, contact_person:"Jeff Bezos", value:150000, stage:"Negotiate", expected_close:"2021-11-17")

activity1 = Activity.create(title: "called jeff bezos- not good", content: "jeff bezos met with me at 8am for coffee in downtown miami. told me to go f*ck myself and that my price was through the roof. after showing him my layout and rendering of his new rocketship office he calmed down. next meeting schedule for august.", opportunity_id: 5)
activity2 = Activity.create(title: "bezos called me at 3am", content:"bezos called me the same night to say he was sorry for the way he acted but then told me not to play any tricks in a threatening way. Call saved in case I need it in the future.", opportunity_id: 5)

puts "💸 💸 💸  SUCCESSFULLY SEEDED 💸 💸 💸  "