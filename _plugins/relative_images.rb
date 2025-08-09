Jekyll::Hooks.register :site, :post_render do |site|
  baseurl = site.config['baseurl'] || ""
  
  site.pages.each do |page|
    if page.output_ext == ".html"
      # Handle images that start with / but don't already have baseurl
      page.output = page.output.gsub(/<img ([^>]*?)src="\/(?!#{Regexp.escape(baseurl.sub('/', ''))})([\w\s.-]+\.(jpg|jpeg|png|gif|svg))"([^>]*?)>/i) do |match|
        attributes_before = $1
        image_path = $2
        extension = $3
        attributes_after = $4
        %Q(<img #{attributes_before}src="#{baseurl}/#{image_path}"#{attributes_after}>)
      end
      
      # Handle relative images (no leading /)
      page.output = page.output.gsub(/<img ([^>]*?)src="(?!http|\/|#)([\w\s.-]+\.(jpg|jpeg|png|gif|svg))"([^>]*?)>/i) do |match|
        attributes_before = $1
        image_path = $2
        extension = $3
        attributes_after = $4
        %Q(<img #{attributes_before}src="#{baseurl}/#{image_path}"#{attributes_after}>)
      end
    end
  end
  
  site.documents.each do |document|
    if document.output_ext == ".html"
      # Handle images that start with / but don't already have baseurl
      document.output = document.output.gsub(/<img ([^>]*?)src="\/(?!#{Regexp.escape(baseurl.sub('/', ''))})([\w\s.-]+\.(jpg|jpeg|png|gif|svg))"([^>]*?)>/i) do |match|
        attributes_before = $1
        image_path = $2
        extension = $3
        attributes_after = $4
        %Q(<img #{attributes_before}src="#{baseurl}/#{image_path}"#{attributes_after}>)
      end
      
      # Handle relative images (no leading /)
      document.output = document.output.gsub(/<img ([^>]*?)src="(?!http|\/|#)([\w\s.-]+\.(jpg|jpeg|png|gif|svg))"([^>]*?)>/i) do |match|
        attributes_before = $1
        image_path = $2
        extension = $3
        attributes_after = $4
        %Q(<img #{attributes_before}src="#{baseurl}/#{image_path}"#{attributes_after}>)
      end
    end
  end
end