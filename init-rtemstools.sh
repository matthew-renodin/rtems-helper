
echo "Build RTEMS tools"

BUILDDIR=${PWD}

cd rsb

./source-builder/sb-check

cd rtems

../source-builder/sb-set-builder --prefix=$BUILDDIR/rtems/tools 5/rtems-arm

cd $BUILDDIR/kernel

./bootstrap -c && $BUILDDIR/rsb/source-builder/sb-bootstrap

cd $BUILDDIR


