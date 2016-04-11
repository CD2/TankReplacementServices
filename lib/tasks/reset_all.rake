task reset_all: :environment do

	Rake::Task['db:drop'].invoke
	Rake::Task['db:create'].invoke
	Rake::Task['db:migrate'].invoke
	Rake::Task['seed_db'].invoke
	
end

task seed_db: :environment do
	
	Rake::Task['gen_users'].invoke
	Rake::Task['gen_services'].invoke
	Rake::Task['gen_pages'].invoke
	Rake::Task['gen_faqs'].invoke
	Rake::Task['gen_promotions'].invoke

end