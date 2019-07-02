contract C {

  int private state = 0;
  function f(int x) public {
    state = x;
  }

  function echidna_fails_on_revert() public returns (bool) {
    if (state < 0)
      revert();
    return true;
  }
}
