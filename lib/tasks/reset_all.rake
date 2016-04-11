task reset_all: :environment do

	Rake::Task['db:drop'].invoke
	Rake::Task['db:create'].invoke
	Rake::Task['heroku_set'].invoke

end

task heroku_set: :environment do
	
	Rake::Task['db:migrate'].invoke
	Rake::Task['gen_users'].invoke
	Rake::Task['gen_services'].invoke
	Rake::Task['gen_pages'].invoke
	Rake::Task['gen_faqs'].invoke
	Rake::Task['gen_promotions'].invoke

end