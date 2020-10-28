require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :rust_build do
  `cargo rustc --release`
  `mv -f ./target/release/libfib.dylib ./lib/fib`
end

task :rust_clean do
  `cargo clean`
  `rm -f ./lib/fib/libfib.dylib`
end

task :clean => :rust_clean
task :build => :rust_build
task :spec => :rust_build

