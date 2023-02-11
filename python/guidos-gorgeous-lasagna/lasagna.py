"""Functions used in preparing Guido's gorgeous lasagna.

Learn about Guido, the creator of the Python language: https://en.wikipedia.org/wiki/Guido_van_Rossum
"""

# TODO: define the 'EXPECTED_BAKE_TIME' constant
EXPECTED_BAKE_TIME = 45
# TODO: consider defining the 'PREPARATION_TIME' constant
#       equal to the time it takes to prepare a single layer
PREPARATION_TIME = 15

# TODO: define the 'bake_time_remaining()' function
def bake_time_remaining(elapsed_bake_time):
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int - baking time already elapsed.
    :return: int - remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """
    return EXPECTED_BAKE_TIME - elapsed_bake_time


# TODO: define the 'preparation_time_in_minutes()' function
#       and consider using 'PREPARATION_TIME' here
def preparation_time_in_minutes(number_of_layers):
    """Calculate the prep time based on the number of layers.

    :param num_of_layers: int - number of layers in the lasagna.
    :return: int - total prep time (in minutes) derived from 'PREPARATION_TIME'.

    Function that takes the minutes needed to prep each layer of the lasagna
    based on the `PREPARATION_TIME` multiplied by the number of layers taken as an argument.
    """
    return PREPARATION_TIME * number_of_layers

# TODO: define the 'elapsed_time_in_minutes()' function
def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """Calculate total elapsed cooking time
    
    :param number_of_layers: int - number of layers in the lasagna.
    :param elapsed_bake_time: int - the actual minutes the lasagna has been in the oven.

    Function that takes the number of layers in the lasagna, multiplies that by
    the `PREPARATION_TIME` constant to get total prep time, then adds that to the
    time the lasagna has been in the oven so far to get the total cooking time up to this point.
    """
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time
