namespace :dev do

  desc "清理指定的模型代码"
  task "clear" do
    del_model ENV['model'] if not ENV['model'].nil?

    del_ctrl ENV['ctrl'] if not ENV['ctrl'].nil?

    if not ENV['all'].nil?
      del_ctrl ENV['all']
      del_model ENV['all']
    end
  end
  
  desc "build scaffold script from db"
  task "gen_from_db" => :environment do
    magic_fields = [
      "created_at", "created_on", "updated_at", "updated_on",
      "lock_version", "type", "id", "position", "parent_id", "lft",
      "rgt", "quote", "template"
    ]

    ActiveRecord::Base.connection.tables.collect{|tbl|
      clazz = tbl.split(ActiveRecord::Base.table_name_prefix)[1].classify
      if tbl !~ /schema/
        puts "script/generate scaffold #{clazz} " + ActiveRecord::Base.connection.columns(tbl).select{|c| ! magic_fields.include? c.name }.collect{ | c | "#{c.name}:#{c.type}"}.join(" ")
      end
    }  
  end

  def del_model arg
    if arg == "*"
      Dir.entries("app/models").each{ |f| 
        del_a_model f.split(".")[0] if f !~ /^\./
      }
    else
      del_a_model arg
    end
  end

  def del_a_model name
    system("rm -i app/models/#{name}.rb")
    system("rm -i db/migrate/*create_#{name.pluralize}.rb")
    system("rm -i test/fixtures/#{name.pluralize}.yml")
    system("rm -i test/unit/#{name}_test.rb")
  end

  def del_ctrl arg
    if arg == "*"
      Dir.entries("app/controllers").each{ |f| 
        del_a_ctrl f.split("_controller")[0].singularize if f !~ /^(\.|application)/
      }
    else
      del_a_ctrl arg
    end
  end

  def del_a_ctrl name
    system("rm -i app/controllers/#{name.pluralize}_controller.rb")
    system("rm -i app/helpers/#{name.pluralize}_helper.rb")
    system("rm -r app/views/#{name.pluralize}")
    system("rm -i app/views/layouts/#{name.pluralize}.html.erb")
    system("rm -i test/functional/#{name.pluralize}_controller_test.rb")
    system("rm -i test/unit/helpers/#{name.pluralize}_helper_test.rb")
  end
end
