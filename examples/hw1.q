/* DON'T add a main function! You may add helper functions (except sameLength may not call them)*/

int isList(Q val) {
    if (isNil(val) != 0)
        return 1;
    if (isAtom(val) != 0)
        return 0;

    return isList(right((Ref) val));
}

Ref append(Ref list1, Ref list2) {
    if (isNil(list1) != 0)
        return list2;

    return left(list1) . append((Ref) right(list1), list2);
}

Ref reverse(Ref list) {
    if (isNil(list) != 0)
        return nil;

    Ref right_reversed = reverse((Ref) right(list));
    return append(right_reversed, left(list) . nil);
}

int isSorted(Ref list) {
    return isSortedHelper(list, 0);
}

int isSortedHelper(Ref list, int prevLen) {
    if (isNil(list) != 0) {
        return 1;
    }

    int currLen = len((Ref) left(list));
    if (currLen < prevLen)
        return 0;

    return isSortedHelper((Ref) right(list), currLen);
}

int len(Ref list) {
    if (isNil(list) != 0)
        return 0;

    return 1 + len((Ref) right(list));
}

int sameLength(Ref list1, Ref list2) {
    int isFirstListNil = isNil(list1);
    int isSecondListNil = isNil(list2);

    if (isFirstListNil != 0 && isSecondListNil != 0)
        return 1;

    if (isFirstListNil != 0 || isSecondListNil != 0)
        return 0;

    return sameLength((Ref) right(list1), (Ref) right(list2));
}
