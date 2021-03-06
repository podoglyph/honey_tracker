User.create(email: "d@d.com", first_name: "Don", last_name: "Quixote", password: "password", role: 1)
User.create(email: "s@p.com", first_name: "Sancho", last_name: "Panza", password: "password", role: 0)

alfalfa = Forage.create(forage_type: "Alfalfa")
sunflower = Forage.create(forage_type: "Sunflower")
wildflower = Forage.create(forage_type: "Wildflower")
clover = Forage.create(forage_type: "Clover")

mite_treatment = Job.create(job_name: "Mite Treatment")
ph = Job.create(job_name: "Pull Honey")
feed = Job.create(job_name: "Feed Bees")
pollen = Job.create(job_name: "Pollen Patties")
brood = Job.create(job_name: "Equalize Brood")

season = Season.create(name: "Summer", year: 2017)
Season.create(name: "Summer", year: 2016)
Season.create(name: "Summer", year: 2015)
Season.create(name: "Summer", year: 2014)
Season.create(name: "Summer", year: 2013)

Season.create(name: "Winter", year: 2017)
Season.create(name: "Winter", year: 2016)
Season.create(name: "Winter", year: 2015)
Season.create(name: "Winter", year: 2014)
Season.create(name: "Winter", year: 2013)

loc1 = Location.create(name: "Kessler", lat: 46.78689224, long: -101.05866651)
loc2 = Location.create(name: "Honey Bee", lat: 46.1005546, long: -102.16948754)
loc3 = Location.create(name: "Jorgenson", lat: 46.37820269, long: -101.12627232)
loc4 = Location.create(name: "Grass Hill", lat: 45.99671668, long: -100.586097)
loc5 = Location.create(name: "Pocahontas", lat: 46.91383484, long: -100.27418175)

season.season_locations.create(location_id: loc1.id, num_hives: 48, num_supers: 130, num_dead: 2)
season.season_locations.create(location_id: loc2.id, num_hives: 48, num_supers: 132, num_dead: 1)
season.season_locations.create(location_id: loc3.id, num_hives: 48, num_supers: 116, num_dead: 1)
season.season_locations.create(location_id: loc4.id, num_hives: 48, num_supers: 133, num_dead: 0)
season.season_locations.create(location_id: loc5.id, num_hives: 48, num_supers: 156, num_dead: 0)

loc1.location_forages.create!(forage_id: alfalfa.id)
loc1.location_forages.create!(forage_id: sunflower.id)
loc2.location_forages.create!(forage_id: alfalfa.id)
loc2.location_forages.create!(forage_id: wildflower.id)
loc3.location_forages.create!(forage_id: alfalfa.id)
loc4.location_forages.create!(forage_id: wildflower.id)
loc4.location_forages.create!(forage_id: sunflower.id)
loc5.location_forages.create!(forage_id: clover.id)

loc1.location_jobs.create(job_id: pollen.id)
loc1.location_jobs.create(job_id: mite_treatment.id)
loc2.location_jobs.create(job_id: ph.id)
loc2.location_jobs.create(job_id: pollen.id)
loc3.location_jobs.create(job_id: pollen.id)
loc4.location_jobs.create(job_id: ph.id)
loc4.location_jobs.create(job_id: mite_treatment.id)
loc5.location_jobs.create(job_id: pollen.id)
loc5.location_jobs.create(job_id: brood.id)
