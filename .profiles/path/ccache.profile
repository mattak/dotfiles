if type ccache 2> /dev/null; then
  export NDK_CCACHE=$(which ccache)
fi
