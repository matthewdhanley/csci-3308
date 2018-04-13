#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# Andy Sayler
# Summer 2014
# CSCI 3308
# Univerity of Colorado
# Text Processing Module

# NAMES: 
#   Erik Pronk
#   Matthew Hanley

# Question 7
#   count_alpha wasn't case insensitive
#   count_numeric wasn't looking for 0
#   count_vowels wasn't looking for i
#   Bug in the regex for is_phonenumber
#       - not looking for correct number of numbers
#       - wasn't looking for dashes
#

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

    def test1(self):
        self.assertRaises(textproc.TextProcError, textproc.Processor, 1, "wrong")

    def test2(self):
        text = 'abc'
        p = textproc.Processor(text)
        l = p.count()
        self.assertEqual(len(text), l, msg="Processor.count didn't work right")

    def test3a(self):
        text = 'abc'
        p = textproc.Processor(text)
        cnt = p.count_alpha()
        self.assertEqual(cnt, 3, "wrong")

    def test3b(self):
        text = 'Abc'
        p = textproc.Processor(text)
        cnt = p.count_alpha()
        self.assertEqual(cnt, 3, "wrong")

    def test3c(self):
        text = 'Abc1'
        p = textproc.Processor(text)
        cnt = p.count_alpha()
        self.assertEqual(cnt, 3, "wrong")

    def test3d(self):
        text = 'abc1'
        p = textproc.Processor(text)
        cnt = p.count_alpha()
        self.assertEqual(cnt, 3, "wrong")

    def test3e(self):
        text = '1'
        p = textproc.Processor(text)
        cnt = p.count_alpha()
        self.assertEqual(cnt, 0, "wrong")

    # problem 4 ------------------------------------
    def test4a(self):
        text = 'abc'
        p = textproc.Processor(text)
        cnt = p.count_numeric()
        self.assertEqual(cnt, 0, "wrong")

    def test4b(self):
        text = 'Abc'
        p = textproc.Processor(text)
        cnt = p.count_numeric()
        self.assertEqual(cnt, 0, "wrong")

    def test4c(self):
        text = 'Abc1'
        p = textproc.Processor(text)
        cnt = p.count_numeric()
        self.assertEqual(cnt, 1, "wrong")

    # problem 5 --------------------------------------
    def test5a(self):
        text = 'aeiou'
        p = textproc.Processor(text)
        cnt = p.count_vowels()
        self.assertEqual(cnt, 5, "wrong")

    def test5b(self):
        text = 'aeiouhfjgrp'
        p = textproc.Processor(text)
        cnt = p.count_vowels()
        self.assertEqual(cnt, 5, "wrong")

    def test5c(self):
        text = 'aeiouhfjgrp123123132'
        p = textproc.Processor(text)
        cnt = p.count_vowels()
        self.assertEqual(cnt, 5, "wrong")

    def test5d(self):
        text = 'hfjgrp'
        p = textproc.Processor(text)
        cnt = p.count_vowels()
        self.assertEqual(cnt, 0, "wrong")


    def test_6(self):
        num = "123-456-7890"
        p = textproc.Processor(num)
        self.assertTrue(p.is_phonenumber(), "Not true")


# Main: Run Test Cases
if __name__ == '__main__':
    unittest.main()
