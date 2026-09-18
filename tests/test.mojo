from std.testing import TestSuite
from tests.test_basics import tests as basics
from tests.test_ops import tests as ops
from tests.test_test import tests as testing

def main() raises:
    TestSuite.discover_tests[basics]().run()
    TestSuite.discover_tests[ops]().run()
    TestSuite.discover_tests[testing]().run()
