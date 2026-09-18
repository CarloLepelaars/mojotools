from std.testing import assert_raises
from mojotools.ops import *
from mojotools.test import *


def test_test_eq() raises:
    test(1, 1, eq[Int])
    test_eq(1, 1)
    test_eq(String("a"), String("a"))
    with assert_raises(contains="1\n2"):
        test(1, 2, eq[Int])
    with assert_raises(contains="1\n2"):
        test_eq(1, 2)


def test_test_neq() raises:
    test(1, 2, neq[Int])
    with assert_raises(contains="1\n1"):
        test(1, 1, neq[Int])


def test_test_same_type() raises:
    test(1, 2, same_type[Int, Int])
    with assert_raises(contains="1\nx"):
        test(1, String("x"), same_type[Int, String])


def test_test_lt() raises:
    test(1, 2, lt[Int])
    with assert_raises(contains="2\n1"):
        test(2, 1, lt[Int])


def test_test_le() raises:
    test(1, 1, le[Int])
    test(1, 2, le[Int])
    with assert_raises(contains="2\n1"):
        test(2, 1, le[Int])


comptime tests = __functions_in_module()
