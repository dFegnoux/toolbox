# add aliases to .zshrc
SCRIPT=$(readlink -f $0)
SCRIPTPATH=`dirname $SCRIPT`
FILES=aliases/*

printf "\n# ToolBox files\n" >> ~/.zshrc

for f in $FILES
do
  echo "Adding $SCRIPTPATH/$f file to ~/.zshrc..."
  echo "source $SCRIPTPATH/$f" >> ~/.zshrc
done