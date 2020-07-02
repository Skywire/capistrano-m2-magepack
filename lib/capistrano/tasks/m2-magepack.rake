namespace :magepack do
  desc "Bundle JS"
  task :bundle do
    on release_roles :all do
      within release_path do
        execute *%w[node ./node_modules/magepack/cli.js bundle]
      end
    end
  end
end

after "magento:setup:static-content:deploy", "magepack:bundle"
