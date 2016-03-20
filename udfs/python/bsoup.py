from bs4 import BeautifulSoup
from pig_util import outputSchema

@outputSchema('doc:chararray')
def formathtml(doc):
    soup = BeautifulSoup(str(doc))
    return soup.prettify()
