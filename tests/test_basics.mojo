from std.testing import assert_equal
from mojotools.basics import ifnone


def test_ifnone_none() raises:
    assert_equal(ifnone[Int](None, 1), 1)


def test_ifnone_some() raises:
    assert_equal(ifnone(Optional(2), 1), 2)


comptime tests = __functions_in_module()
