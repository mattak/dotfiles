
# pathes
path=("/bin" "/sbin" "/usr/bin" "/usr/sbin" "/usr/local/bin" "$HOME/bin" "$HOME/src/android-ndk" "$HOME/src/android-sdks/tools" "$HOME/src/android-sdks/platform-tools")

for p in ${path[@]}
do
    if [ -d $p ]; then
#        export PATH="$p:$PATH"
    fi
done

