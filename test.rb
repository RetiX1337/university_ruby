# frozen_string_literal: true
require_relative './mn_doc'

mn_doc = MNDoc.new do
  header('MNDoc Class Documentation', 1)
  paragraph('The MNDoc class is used for creating markdown documentation. It provides several methods to add different types of content to the documentation.')

  header('Methods:', 2)

  header('initialize(file_name = "mndoc.txt", &block)', 3)
  paragraph('This is the constructor of the MNDoc class. It takes two parameters:')
  u_list(['file_name: The name of the file where the documentation will be written. The default value is "mndoc.txt".', '&block: A block of code that is evaluated within the context of the instance.'])
  paragraph("Usage example: ")
  code("MNDoc.new do\nheader('MNDoc Class Documentation', 1)\nend")

  header('header(text, size)', 3)
  paragraph('Adds a header to the documentation. It takes two parameters:')
  u_list(['text: The text of the header.', 'size: The size of the header. It should be a number between 1 and 6.'])
  paragraph("Usage example: ")
  code("header('This will generate a header of size 3', 3)")

  header('paragraph(text)', 3)
  paragraph('Adds a paragraph to the documentation. It takes one parameter:')
  u_list(['text: The text of the paragraph.'])
  paragraph("Usage example: ")
  code("paragraph('This will generate a paragraph')")

  header('code(text)', 3)
  paragraph('Adds a code block to the documentation. It takes one parameter:')
  u_list(['text: The text of the code block.'])
  paragraph("Example: ")
  code("mn_doc = MNDoc.new do\nheader('MNDoc Class Documentation', 1)\nend")
  paragraph("Usage example: ")
  code("code('this will generate code block')")

  header('u_list(items)', 3)
  paragraph('Adds an unordered list to the documentation. It takes one parameter:')
  u_list(['items: An array of items to be included in the list.'])
  paragraph("Example: ")
  u_list(%w[item1 item2 item3])
  paragraph("Usage example: ")
  code("u_list(%w[item1 item2 item3])")

  header('o_list(items)', 3)
  paragraph('Adds an ordered list to the documentation. It takes one parameter:')
  u_list(['items: An array of items to be included in the list.'])
  paragraph("Example: ")
  o_list(%w[item1 item2 item3])
  paragraph("Usage example: ")
  code("o_list(%w[item1 item2 item3])")

  header('bold(text)', 3)
  paragraph('Makes a text bold in the documentation. It takes one parameter:')
  u_list(['text: The text to be made bold.'])
  paragraph("Example: #{bold("this text will be bold")}")
  paragraph("It has to be used inlined like this: ")
  code('paragraph("Example: #{bold("this text will be bold")}')

  header('italic(text)', 3)
  paragraph('Makes a text italic in the documentation. It takes one parameter:')
  u_list(['text: The text to be made italic.'])
  paragraph("Example: #{italic("this text will be italic")}")
  paragraph("It has to be used inlined like this: ")
  code('paragraph("Example: #{italic("this text will be italic")}')

  header('quote(text)', 3)
  paragraph('Adds a quote to the documentation. It takes one parameter:')
  u_list(['text: The text of the quote.'])
  paragraph("Example: ")
  quote("Example of the quote")
  paragraph("Usage example: ")
  code("quote('This will generate a quote')")

  header('link(url, cover_text)', 3)
  paragraph('Adds a hyperlink to the documentation. It takes two parameters:')
  u_list(['url: The URL of the hyperlink.', 'cover_text: The text that will be displayed as the hyperlink.'])
  paragraph("Example: ")
  link("https://www.youtube.com", "Link to YouTube")
  paragraph("Usage example: ")
  code('link("https://www.youtube.com", "Link to YouTube")')

  header('image(url, alt_text, explain_text)', 3)
  paragraph('Adds an image to the documentation. It takes three parameters:')
  u_list(['url: The URL of the hyperlink to the image.', 'alt_text: The text to be displayed instead of image.',
          'explain text: The text to be displayed once cursor is pointing at the picture'])
  paragraph("Example: ")
  paragraph("")
  image("https://i.imgflip.com/2/7ssjd0.jpg",
        "Goofy ahh cat", "He is planning something mischievous")
  paragraph("Usage example: ")
  code('image("https://i.imgflip.com/2/7ssjd0.jpg",
        "Goofy ahh cat", "He is planning something mischievous")')


  header('table(headers, *rows)', 3)
  paragraph('Adds a table to the documentation. It takes two parameters:')
  u_list(['headers: The headers of table as an array.', '*rows: Unlimited amount of rows as arrays.'])
  paragraph("Example: ")
  table(%w[Header1 Header2], %w[Row1Col1 Row1Col2], %w[Row2Col1 Row2Col2])
  paragraph("Usage example: ")
  code('table(%w[Header1 Header2], %w[Row1Col1 Row1Col2], %w[Row2Col1 Row2Col2])')

  header('render', 3)
  paragraph('Writes the documentation to the file.')
end

mn_doc.render