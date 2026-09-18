def eq[T: Equatable](a: T, b: T) -> Bool:
    return a == b

def neq[T: Equatable](a: T, b: T) -> Bool:
    return a != b

def same_type[T: AnyType, U: AnyType](a: T, b: U) -> Bool:
    return type_of(a) == type_of(b)

def lt[T: Comparable](a: T, b: T) -> Bool:
    return a < b

def le[T: Comparable](a: T, b: T) -> Bool:
    return a <= b

def gt[T: Comparable](a: T, b: T) -> Bool:
    return a > b

def ge[T: Comparable](a: T, b: T) -> Bool:
    return a >= b

def is_none[T: Copyable](a: Optional[T]) -> Bool:
    return a is None

def is_some[T: Copyable](a: Optional[T]) -> Bool:
    return a is not None

