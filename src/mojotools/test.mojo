from std.testing import assert_true

from mojotools.ops import eq


def test[
    A: Writable, B: Writable
](a: A, b: B, cmp: def(A, B) thin -> Bool) raises:
    """Assert that `cmp(a, b)`; display inputs if it fails."""
    assert_true(cmp(a, b), String(t"{a}\n{b}"))


def test_eq[T: Writable & Equatable](a: T, b: T) raises:
    """Assert that `a == b`."""
    test(a, b, eq[T])
