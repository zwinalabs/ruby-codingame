# Import redmine issues + journals from Dotbase to helpdesk


# tow parameters and prerequisites : rake import_from_dotbase[id_user,id_projet]

desc "Example of task with parameters and prerequisites"
task :import_from_dotbase, [:first_arg, :second_arg] => ["first_task", "second_task"] do |t, args|
  args.with_defaults(:first_arg => "Foo", :last_arg => "Bar")
  puts "First argument was: #{args.first_arg}"
  puts "Second argument was: #{args.second_arg}"
end

