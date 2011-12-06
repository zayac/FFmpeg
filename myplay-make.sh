SYS_LIBS="-ldl -lva -ljack -lasound -lSDL -lm -pthread -lbz2 -lz "
FFMPEG_LIBS="libavdevice/libavdevice.a  libavfilter/libavfilter.a  libavformat/libavformat.a libavcodec/libavcodec.a libswscale/libswscale.a libswresample/libswresample.a libavutil/libavutil.a"

gcc -c mplay.c -g
#make ffplay
make $FFMPEG_LIBS ADDITIONAL_FLAGS_GIVEN_BY_CMDLINE=-DSTEGANOGRAPHY_STREAM
gcc  mplay.o -o myplay $SYS_LIBS $FFMPEG_LIBS # libavdevice/libavdevice.a  libavfilter/libavfilter.a  libavformat/libavformat.a libavcodec/libavcodec.a libswscale/libswscale.a libswresample/libswresample.a libavutil/libavutil.a
