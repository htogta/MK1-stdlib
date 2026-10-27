set shell := ["bash", "-ic"]

default: test

test: build
  @cat main.mk1 std.mk1 > out.mk1
  @mk1 out.mk1
  @rainbows out.okb

build: clean
  @cat src/basic.mk1 src/datetime.mk1 src/arith.mk1 src/console.mk1 src/disk.mk1 src/float.mk1 > std.mk1

clean:
  @rm -f std.mk1
  @rm -f out.mk1
  @rm -f out.okb
