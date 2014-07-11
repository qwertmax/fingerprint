task :resetdb do
  # Simply drop all databases, recreate and fill with seeds
  Rake::Task["db:reset"].invoke
  Rake::Task["db:migrate"].invoke
end
