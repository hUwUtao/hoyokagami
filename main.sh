mkdir -p 4e

DISPATCH_URL="$(cat bin/dispatch.txt)"
TARFILE=$DISPATCH_URL/$(wget $DISPATCH_URL/_latest -O-)

WGET=wget

if [ -f "bin/wget.exe" ]
then
    WGET=bin/wget
else
    echo Get GNU wget so you don\'t get bored
fi

echo $TARFILE
$WGET $TARFILE -O- | bin/zstd -d | tar xv -C ./4e