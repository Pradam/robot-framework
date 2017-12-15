class PradamClass(object):
    def __init__(self, name, age):
        self._name = name
        self._age = age
    
    @property
    def name(self):
        return self._name

    @name.setter
    def name(self, val):
        if val.lower() == 'pradam':
            print('Corrent Name.')
        else:
            raise NameError('Not a Good Name')
        self._name = val


POG = PradamClass('pradam',78)

DICTIONARY = {1: 'one', 2: 'two', 3: 'three'}