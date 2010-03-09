class CustomPaginationRenderer < WillPaginate::LinkRenderer  
   
   def to_html  
     links = @options[:page_links] ? windowed_links : []  
     links.unshift page_link_or_span(@collection.previous_page, 'disabled prev_page', @options[:previous_label])  
     links.push    page_link_or_span(@collection.next_page,     'disabled next_page', @options[:next_label])  
     html = links.join(@options[:separator])  
     html = " 每页显示#{@collection.per_page}条数据,共有#{@collection.total_pages}页,  共有#{@collection.total_entries}条数据" + html  
     @options[:container] ? @template.content_tag(:div, html, html_attributes) : html  
   end  
   
end 
