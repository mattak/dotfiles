# nodebrew
which nodebrew > /dev/null
if [ $? -eq 1 ]; then
    curl https://raw.github.com/hokaccha/nodebrew/master/nodebrew | perl - setup
fi

# perlbrew
which perlbrew > /dev/null
if [ $? -eq 1 ]; then
    curl -kL http://install.perlbrew.pl | bash
fi

# lein
which lein > /dev/null
if [ $? -eq 1 ]; then
    curl -L https://raw.github.com/technomancy/leiningen/stable/bin/lein > ~/bin/lein
    # chmod a+x ~/bin/lein
fi

# rbenv

# gvm

which gvm > /dev/null
if [ $? -eq 1 ]; then
  curl -s get.gvmtool.net | bash
fi

