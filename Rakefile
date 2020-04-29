require "bundler/gem_tasks"
require "rubocop/rake_task"

task default: %i[rubocop explain_yourself]

RuboCop::RakeTask.new

desc "Check for missing documentation"
task :explain_yourself do
  missing_comment_regex = /^\s*\n([A-Z][\w\/]+):/
  config_files = Dir["config/*.yml"]

  unexplained_cops = config_files.map do |file|
    File.read(file).scan(missing_comment_regex)
  end

  unexplained_cops.flatten!
  cops_exempt_from_explanation = %w[AllCops Rails]
  unexplained_cops -= cops_exempt_from_explanation

  if unexplained_cops.any?
    puts "Missing comment/explanation for Cop(s):\n\n"
    puts unexplained_cops
    puts
    abort "Exiting due to missing documentation"
  end
end
