from std.testing import TestSuite
from test_basics import tests as basics
from test_ops import tests as ops
from test_test import tests as testing

def main() raises:
    TestSuite.discover_tests[basics]().run()
    TestSuite.discover_tests[ops]().run()
    TestSuite.discover_tests[testing]().run()
