import unittest
from game_of_life import *

class GameOfLifeTest(unittest.TestCase):
    def test_first_one(self):
        game_of_life = GameOfLife()
        self.assertFalse(game_of_life.is_alive(0))
