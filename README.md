# M2 Magepack

- Gem for capistrano to run magepack bundler during deployment

## Add to your project:

Add the following to your project Gemfile

~~~
gem 'capistrano-m2-magepack', :git => 'git@github.com:Skywire/capistrano-m2-magepack.git', :branch => 'master'
~~~

Then run 

~~~
bundle install
~~~

Add the following to your project Capfile

~~~
require "capistrano/m2-magepack"
~~~

Then add the following object into the `set:npm_commands` array:
~~~
,{path: "", command: "ci"}
~~~