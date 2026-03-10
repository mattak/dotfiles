if type ccache > /dev/null 2>&1; then
  export NDK_CCACHE=$(which ccache)
fi
