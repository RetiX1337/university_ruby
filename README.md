# MNDoc Class Documentation

The MNDoc class is used for creating markdown documentation. It provides several methods to add different types of content to the documentation.
## Methods:
### initialize(file_name = "mndoc.txt", &block)

This is the constructor of the MNDoc class. It takes two parameters:
* file_name: The name of the file where the documentation will be written. The default value is "mndoc.txt".
* &block: A block of code that is evaluated within the context of the instance.


Usage example:
```
MNDoc.new do
header('MNDoc Class Documentation', 1)
end
```
### header(text, size)

Adds a header to the documentation. It takes two parameters:
* text: The text of the header.
* size: The size of the header. It should be a number between 1 and 6.


Usage example:
```
header('This will generate a header of size 3', 3)
```
### paragraph(text)

Adds a paragraph to the documentation. It takes one parameter:
* text: The text of the paragraph.


Usage example:
```
paragraph('This will generate a paragraph')
```
### code(text)

Adds a code block to the documentation. It takes one parameter:
* text: The text of the code block.


Example:
```
mn_doc = MNDoc.new do
header('MNDoc Class Documentation', 1)
end
```

Usage example:
```
code('this will generate code block')
```
### u_list(items)

Adds an unordered list to the documentation. It takes one parameter:
* items: An array of items to be included in the list.


Example:
* item1
* item2
* item3


Usage example:
```
u_list(%w[item1 item2 item3])
```
### o_list(items)

Adds an ordered list to the documentation. It takes one parameter:
* items: An array of items to be included in the list.


Example:
1. item1
2. item2
3. item3


Usage example:
```
o_list(%w[item1 item2 item3])
```
### bold(text)

Makes a text bold in the documentation. It takes one parameter:
* text: The text to be made bold.


Example: **this text will be bold**

It has to be used inlined like this:
```
paragraph("Example: #{bold("this text will be bold")}
```
### italic(text)

Makes a text italic in the documentation. It takes one parameter:
* text: The text to be made italic.


Example: *this text will be italic*

It has to be used inlined like this:
```
paragraph("Example: #{italic("this text will be italic")}
```
### quote(text)

Adds a quote to the documentation. It takes one parameter:
* text: The text of the quote.


Example:
>Example of the quote

Usage example:
```
quote('This will generate a quote')
```
### link(url, cover_text)

Adds a hyperlink to the documentation. It takes two parameters:
* url: The URL of the hyperlink.
* cover_text: The text that will be displayed as the hyperlink.


Example:
[Link to YouTube](https://www.youtube.com)

Usage example:
```
link("https://www.youtube.com", "Link to YouTube")
```
### image(url, alt_text, explain_text)

Adds an image to the documentation. It takes three parameters:
* url: The URL of the hyperlink to the image.
* alt_text: The text to be displayed instead of image.
* explain text: The text to be displayed once cursor is pointing at the picture


Example:


![Goofy ahh cat](https://i.imgflip.com/2/7ssjd0.jpg 'He is planning something mischievous')

Usage example:
```
image("https://i.imgflip.com/2/7ssjd0.jpg",
        "Goofy ahh cat", "He is planning something mischievous")
```
### table(headers, *rows)

Adds a table to the documentation. It takes two parameters:
* headers: The headers of table as an array.
* *rows: Unlimited amount of rows as arrays.


Example:

Header1 | Header2
--- | ---
Row1Col1 | Row1Col2
Row2Col1 | Row2Col2

Usage example:
```
table(%w[Header1 Header2], %w[Row1Col1 Row1Col2], %w[Row2Col1 Row2Col2])
```
### render

Writes the documentation to the file.