namespace :lit do
  desc 'Exports translated strings from lit to config/locales/lit.yml file.'
  task export: :environment do
    if yml = Lit.init.cache.export
      file_name = ENV['LOCALES'].to_s.gsub(/ *, */, '-') || 'lit'
      file_path = "config/locales/#{file_name}.yml"
      File.new("#{Rails.root}/#{file_path}", 'w').write(yml)
      puts "Successfully exported #{file_path}."
    end
  end
end
