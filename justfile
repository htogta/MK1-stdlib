set shell := ["bash", "-ic"]

default: test

test: build
  @cat main.mk1 std.mk1 > out.mk1
  @mk1 out.mk1
  @rainbows out.okb

build: clean
  @cat basic.mk1 datetime.mk1 arith.mk1 console.mk1 > std.mk1

clean:
  @rm -f std.mk1
  @rm -f out.mk1
  @rm -f out.okb
