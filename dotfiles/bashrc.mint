# Various aliases
alias locate="locate -i -r"
alias webs="sdcv -u Webster-1913"
alias noip="noip2 -c ~/.noip2.conf"

export SDCV_PAGER="less"
export PERL5LIB="$HOME/perl5/lib/perl5"

# Initialize perlbrew environment
source ~/perl5/perlbrew/etc/bashrc

# Link to Funds Transfer tools
export FT="$HOME/proj/perl/FundsTransfer"

# Include Android SDK - http://bit.ly/1uRQAWJ
export PATH=${PATH}:~/Development/adt-bundle/sdk/tools
export PATH=${PATH}:~/Development/adt-bundle/sdk/platform-tools

# Link to Current Project
export PROJ="$HOME/proj/cordova/"

# Include JAVA_HOME and ANDROID HOME
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-i386
export ANDROID_HOME=~/Development/adt-bundle/sdk

myfortune.pl

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

