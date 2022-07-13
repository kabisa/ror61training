namespace :links do
  desc 'List all links.'
  task list: :environment do
    Link.all.order(:title).each do |link|
      p link
    end
  end

  desc 'Export links to CSV.'
  task export: :environment do
    require 'csv'

    report = CSV.generate(col_sep: "\t") do |csv|
      csv << %w[Title URL comments]
      links = Link.all.includes(:comments).order(:title)

      links.each do |link|
        csv << [link.title, link.url, link.comments.size]
      end
    end

    # STDOUT.puts report
    Rails.root.join('links.csv').write(report)
  end
end
