module SpringSupport

  def self.get_bean name
    (@spring_context ||= SpringContext.new).get_bean name
  end

	
	private
		class SpringContext

			import org.springframework.context.ApplicationEvent;
			import org.springframework.context.support.AbstractApplicationContext;
			import org.springframework.context.support.FileSystemXmlApplicationContext;

			attr_accessor :container
			
			def initialize
				self.container = FileSystemXmlApplicationContext.new("config/beans-consumer.xml");

        #HelloWorld service = (HelloWorld) context.getBean("helloWorldService");
        #// �첽����
        #service.regard();
        #System.out.println("�첽������ɣ������Ļ�������һ�������������˵�����Ժ��ӡ������");
        #Thread.sleep(5000);
			end
			
			def get_bean name
				self.container.getBean(name)
			end

		end
end


