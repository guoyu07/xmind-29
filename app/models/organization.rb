class Organization < ActiveRecord::Base
  has_many :people

  def hello_markdown
    file_path = File.join(Rails.root,'public','hellos',"#{sigil}.md")
    file_text = ''
    File.open(file_path, "r") do |f|
      f.each_line do |line|
        file_text << line
      end
    end
    markdown(file_text)
  end

  private

  def markdown(text)
    renderer = Redcarpet::Render::HTML.new
    extensions = {fenced_code_blocks: true}
    redcarpet = Redcarpet::Markdown.new(renderer, extensions)
    (redcarpet.render text).html_safe
  end

end
