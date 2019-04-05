
echo "Build RTEMS"

BUILDDIR=${PWD}

mkdir xilinx-zynq-qemu

cd xilinx-zynq-qemu

$BUILDDIR/kernel/configure --prefix=$BUILDER/rtems/bsp --target=arm-rtems5 --enable-rtemsbsp=xilinx_zynq_a9_qemu --enable-posix

make

make install


