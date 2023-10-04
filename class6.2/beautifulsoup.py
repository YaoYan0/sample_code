from bs4 import BeautifulSoup

# Open a file
with open("lion.html") as f:

    # Create a soup object to contained the parsed html.
    soup = BeautifulSoup(f, "html.parser")

    # Here are some things you can do with the parsed html...

    # Find all the text inside <p> tags, and print it out.
    # <p> stands for "paragraph": basically the text in a webpage
    for info in soup.find_all("p"):
        print(info.get_text())

    # Find all the level 2 headings with the <h2> tag.
    for info in soup.find_all("h2"):
        print(info.get_text())

    # Find the title of the web page with the <title> tag.
    for info in soup.find_all("title"):
        print(info.get_text())


