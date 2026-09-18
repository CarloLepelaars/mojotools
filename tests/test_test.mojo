from std.testing import assert_raises
from mojotools.ops import eq
from mojotools.test import test, test_eq


def test_test_pass() raises:
    test(1, 1, eq[Int])
    test_eq(1, 1)
    test_eq(String("a"), String("a"))


def test_test_fail() raises:
    with assert_raises(contains="1\n2"):
        test(1, 2, eq[Int])
    with assert_raises(contains="1\n2"):
        test_eq(1, 2)
