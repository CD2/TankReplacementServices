task :reset_all do

	Rake::Task['db:drop'].invoke
	Rake::Task['db:create'].invoke
	Rake::Task['db:migrate'].invoke
	Rake::Task['gen_users'].invoke
	
end