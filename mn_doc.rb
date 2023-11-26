# frozen_string_literal: true

class MNDoc
  def initialize(file_name = "mndoc.txt", &block)
    @documentation = ""
    @filename = file_name
    instance_eval(&block)
  end

  def header(text, size)
    if size.between?(1, 6)
      @documentation += "#{'#' * size} #{text}\n"
    end
  end

  def paragraph(text)
    @documentation += "\n#{text}\n"
  end

  def code(text)
    @documentation += "```\n#{text}\n```\n"
  end

  def u_list(items)
    items.each do |item|
      @documentation += "* #{item}\n"
    end
    @documentation += "\n"
  end

  def o_list(items)
    items.each_with_index do |item, i|
      @documentation += "#{i + 1}. #{item}\n"
    end
    @documentation += "\n"
  end

  def bold(text)
    "**#{text}**"
  end

  def italic(text)
    "*#{text}*"
  end

  def quote(text)
    @documentation += ">#{text}\n"
  end

  def table(headers, *rows)
    @documentation += "\n"
    @documentation += headers.join(' | ') + "\n"
    @documentation += headers.map { |_| '---' }.join(' | ') + "\n"
    rows.each do |row|
      @documentation += row.join(' | ') + "\n"
    end
  end

  def image(url, alt_text, explain_text)
    @documentation += "![#{alt_text}](#{url} '#{explain_text}')\n"
  end

  def link(url, cover_text)
    @documentation += "[#{cover_text}](#{url})\n"
  end

  def render
    File.open(@filename, 'w') do |file|
      file.write(@documentation)
    end
  end
end
