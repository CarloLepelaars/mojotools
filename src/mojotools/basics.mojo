def ifnone[T: Copyable](a: Optional[T], b: T) -> T:
    """Pattern: b if a is None else a."""
    return a.value().copy() if a else b.copy()
