
echo "This is a test"

BUILDDIR=${PWD}

cd rsb

./source-builder/sb-check

cd rtems

../source-builder/sb-set-builder --prefix=$BUILDDIR/rtems/tools 5/rtems-arm

cd $BUILDDIR/kernel

./bootstrap -c && $BUILDDIR/rsb/source-builder/sb-bootstrap

cd $BUILDDIR

mkdir xilinx-zynq-qemu

cd xilinx-zynq-qemu

$BUILDDIR/configure --prefix=$BUILDER/rtems/bsp --target=arm-rtems5 --enable-rtemsbsp=xilinx_zynq_a9_qemu --enable-posix

make

make install


