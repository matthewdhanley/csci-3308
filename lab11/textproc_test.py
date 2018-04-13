#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# Andy Sayler
# Summer 2014
# CSCI 3308
# Univerity of Colorado
# Text Processing Module

import unittest
import textproc

class TextprocTestCase(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        pass

    @classmethod
    def tearDownClass(cls):
        pass

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def test_init(self):
        text = "tesing123"
        p = textproc.Processor(text)
        self.assertEqual(p.text, text, "'text' does not match input")

    def test_2(self):
        text = "123"
        p = textproc.Processor(text)
        self.assertEqual(p.count(),3,"Does not count")

    def test_5(self):


    def test_6(self):
        num = "123-456-7890"
        p = textproc.Processor(num)
        self.assertTrue(p.is_phonenumber(), "Not true")

# Question 7
#   Bug in the regex for is_phonenumber
#   

# Main: Run Test Cases
if __name__ == '__main__':
    unittest.main()
