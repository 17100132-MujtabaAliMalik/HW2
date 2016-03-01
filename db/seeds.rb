# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movies = [{:title => 'Aladdin', :rating => 'G', :release_date => '25-Nov-1992'},
    	  {:title => 'The Terminator', :rating => 'R', :release_date => '26-Oct-1984'},
    	  {:title => 'When Harry Met Sally', :rating => 'R', :release_date => '21-Jul-1989'},
      	  {:title => 'The Help', :rating => 'PG-13', :release_date => '10-Aug-2011'},
      	  {:title => 'Chocolat', :rating => 'PG-13', :release_date => '5-Jan-2001'},
      	  {:title => 'Amelie', :rating => 'R', :release_date => '25-Apr-2001'},
      	  {:title => '2001: A Space Odyssey', :rating => 'G', :release_date => '6-Apr-1968'},
      	  {:title => 'The Incredibles', :rating => 'PG', :release_date => '5-Nov-2004'},
      	  {:title => 'Raiders of the Lost Ark', :rating => 'PG', :release_date => '12-Jun-1981'},
      	  {:title => 'Chicken Run', :rating => 'G', :release_date => '21-Jun-2000'},
      	  {:title => 'Test', :rating => 'PG', :release_date => '12-Jun-1991'},
      	  {:title => 'Chicken Run 1', :rating => 'G', :release_date => '21-Jun-2005'},
      	  {:title => 'Test 2', :rating => 'PG', :release_date => '12-Jun-1992'},
      	  {:title => 'Chicken Run 2', :rating => 'G', :release_date => '21-Jun-2004'},
      	  {:title => 'Test 3', :rating => 'PG', :release_date => '12-Jun-1993'},
      	  {:title => 'Chicken Run 3', :rating => 'G', :release_date => '21-Jun-2003'},
      	  {:title => 'Test 4', :rating => 'PG', :release_date => '12-Jun-1994'},
      	  {:title => 'Chicken Run 4', :rating => 'G', :release_date => '21-Jun-2002'},
      	  {:title => 'Test 5', :rating => 'PG', :release_date => '12-Jun-1995'},
      	  {:title => 'Chicken Run 5', :rating => 'G', :release_date => '21-Jun-2001'},
  	 ]

movies.each do |movie|
  Movie.create!(movie)
end
