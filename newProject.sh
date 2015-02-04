echo "Enter the project name"
read -e NAME
echo "Enter name of dummy directory"
read -e DUMMY

mkdir $NAME
cd $NAME


mkdir lib
cd lib
mkdir $DUMMY
touch $DUMMY.rb
cd ..

mkdir spec
cd spec
touch spec_helper.rb
echo "require '$DUMMY'" >> spec_helper.rb
mkdir $DUMMY

cd ..

touch Rakefile

touch Gemfile


echo "require 'rspec/core/rake_task'" >> Rakefile
echo " " >> Rakefile
echo "RSpec::Core::RakeTask.new(:spec)" >> Rakefile
echo "task :default => :spec" >> Rakefile

echo 'source "http://rubygems.org"' >> Gemfile
echo "" >> Gemfile
echo "gem 'rake'" >> Gemfile
echo "gem 'rspec'" >> Gemfile



