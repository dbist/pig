from pig_util import outputSchema

@outputSchema('word:chararray')
def allcaps(word):
    """
        return all caps
    """
    return str(word).upper()
