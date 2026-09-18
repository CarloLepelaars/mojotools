from std.testing import assert_equal, assert_true, TestSuite
from mojotools.base import ArbType
from mojotools.basics import ifnone


def test_ifnone_none() raises:
    var a = ifnone(None, ArbType(1))
    assert_true(a.isa[Int]())
    assert_equal(a.unsafe_get[Int](), 1)


def test_ifnone_some() raises:
    var a = ifnone(Optional(ArbType(2)), ArbType(1))
    assert_true(a.isa[Int]())
    assert_equal(a.unsafe_get[Int](), 2)


def main() raises:
    TestSuite.discover_tests[__functions_in_module()]().run()
