namespace :dev do
  desc "清理指定的模型代码"
  task "clear" do
    if not ENV['model'].nil?
      del_model ENV['model']
    end
    if not ENV['ctrl'].nil?
      del_ctrl ENV['ctrl']
    end
    if not ENV['all'].nil?
      del_ctrl ENV['all']
      del_model ENV['all']
    end
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
    system("rm -R app/views/#{name.pluralize}")
    system("rm -i test/functional/#{name.pluralize}_controller_test.rb")
    system("rm -i test/unit/helpers/#{name.pluralize}_helper_test.rb")
  end
end
