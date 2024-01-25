"""Functions used in preparing Guido's gorgeous lasagna.

Learn about Guido, the creator of the Python language:
https://en.wikipedia.org/wiki/Guido_van_Rossum

This is a module docstring, used to describe the functionality
of a module and its functions and/or classes.
"""


EXPECTED_BAKE_TIME = 40
PREPARATION_TIME_PER_LAYER = 2


def bake_time_remaining(elapsed_bake_time):
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int - baking time already elapsed.
    :return: int - remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.
    """

    return EXPECTED_BAKE_TIME - elapsed_bake_time


def preparation_time_in_minutes(number_of_layers):
    """Returns the number of minutes needed to prepare a lasagna made from a given number of layers.

    :param number_of_layers: int - the number of layers the lasagna will have.
    :return: int - the number of minutes needed to prepare the lasagna.
    """
    return PREPARATION_TIME_PER_LAYER * number_of_layers


def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """Returns the amount of time that remains before the lasagna will
    be finished baking, inclusive of the number of layers that will
    compose the finished dish.

    :param number_of_layers: int - the number of layers the lasagna will have.
    :param elapsed_bake_time: int - the amount of time that the prep and
    bake of the dish has passed so far.
    :return: int - the amount of time that remains expressed in minutes.
    """
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time
