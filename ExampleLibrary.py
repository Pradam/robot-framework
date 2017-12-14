def simple_key():
    """Log a message"""
    print 'You have used the simplest keyword.'

def search_key():
    """Log a message"""
    return '19091990'

def get_mail():
    return 'pradam.programming@gmail.com'

def greet(name):
    """Logs a friendly greeting to person given as argument"""
    print 'Hello %s!' % name

def multiply_two(number):
    """Returns the given number multiplied by two
    
    The result is always a floating point number.
    This keyword fails if the given `number` cannot be converted to number.
    """
    return float(number) * 2

def numbers_should_be_equal(first, second):
    print '*DEBUG* Got arguments %s and %s' % (first, second)
    if float(first) != float(second):
        raise AssertionError('Given numbers are unequal!')


def my_name(name):
    if name != 'pradam':
        raise AssertionError("Not a great name.")
    else:
        print("Great name.")


def return_name(num):
    return float(num) ** 2


def strings_should_be_equal(first, second=None):
    if first == second:
        print('Cool Matched.')
    else:
     raise AssertionError('Given strings are unequal.')

def calculate(cal):
    #get_values = sum(map(int,cal.split('+')))
    get_values = eval(cal)
    return str(get_values)

def create_binary_file(file_, text):
    with open(file_, 'wb+') as f:
        f.write(text)
    return 'successfully written the file {name}.'.format(name=f.name)

