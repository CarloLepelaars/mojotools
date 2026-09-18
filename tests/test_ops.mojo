from std.testing import assert_false, assert_true
from mojotools.ops import *


def test_eq_neq() raises:
    assert_true(eq(1, 1))
    assert_false(eq(1, 2))


def test_neq() raises:
    assert_true(neq(1, 2))
    assert_false(neq(1, 1))


def test_same_type() raises:
    assert_true(same_type(1, 2))
    assert_false(same_type(1, String("x")))


def test_cmp() raises:
    assert_true(lt(1, 2) and le(1, 1) and gt(2, 1) and ge(2, 2))
    assert_false(lt(2, 1) or gt(1, 2))


def test_optional() raises:
    assert_true(is_none[Int](None) and is_some(Optional(1)))
    assert_false(is_none(Optional(1)) or is_some[Int](None))


comptime tests = __functions_in_module()
