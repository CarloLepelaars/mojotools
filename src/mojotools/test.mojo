from std.testing import assert_true

from mojotools.ops import *

def test[
    A: Writable, B: Writable
](a: A, b: B, cmp: def(A, B) thin -> Bool) raises:
    """Assert that `cmp(a, b)`"""
    assert_true(cmp(a, b), String(t"{a}\n{b}"))

def test_eq[T: Writable & Equatable](a: T, b: T) raises: test(a, b, eq[T])
def test_neq[T: Writable & Equatable](a: T, b: T) raises: test(a, b, neq[T])
def test_eq_type[T: Writable, U: Writable](a: T, b: U) raises: test(a, b, same_type[T, U])
def test_lt[T: Writable & Comparable](a: T, b: T) raises: test(a, b, lt[T])
def test_le[T: Writable & Comparable](a: T, b: T) raises: test(a, b, le[T])
def test_gt[T: Writable & Comparable](a: T, b: T) raises: test(a, b, gt[T])
def test_ge[T: Writable & Comparable](a: T, b: T) raises: test(a, b, ge[T])
