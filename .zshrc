setopt histignorespace

if [ -f ~/.aliases.sh ]; then
    source ~/.aliases.sh
fi

# require virtual env when installing packages
export PIP_REQUIRE_VIRTUALENV=true
