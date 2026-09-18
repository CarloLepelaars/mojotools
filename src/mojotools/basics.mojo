from .base import ArbType


def ifnone(a: Optional[ArbType], b: ArbType) raises -> ArbType:
    """Pattern: b if a is None else a."""
    return a.value().copy() if a else b.copy()
