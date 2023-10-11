# import the xml library ElementTree API
import xml.etree.ElementTree as ET

# Download an XML file from the NYT RSS Feed
tree = ET.parse('Television.xml')

# Get the root. Then you can traverse the tree.
root = tree.getroot()

# Look at the XML, and you'll figure out that you
# need to get every item tag under the channel tag.
for article in root.findall('./channel/item'):

    # From each item, get its title and description
    title = article.find('title').text
    description = article.find('description').text
    print(title,description)


