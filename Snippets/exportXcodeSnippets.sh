CURRENT_DIR=`pwd`

# Xcode Snippets directory
XCODE_SNIPPETS_DIR="${HOME}/Library/Developer/Xcode/UserData/CodeSnippets"

# Check if there are code snippets to copy in the current directory.
cd $XCODE_SNIPPETS_DIR
if [[ -z `ls *.codesnippet` ]] 
then
	echo "No code snippets in current directory. Exiting."
	exit 1;
fi
echo "Exists."

# Copy all the code snippets to the Xcode snippets directory
cp *.codesnippet $CURRENT_DIR

ls $CURRENT_DIR