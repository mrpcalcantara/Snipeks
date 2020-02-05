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

cd $CURRENT_DIR
echo $CURRENT_DIR

# Create code snippets destination directory, if it does not exist.
if ! [[ -d $XCODE_SNIPPETS_DIR ]]
then
    echo "$XCODE_SNIPPETS_DIR does not exist. Creating the directory."
    mkdir $XCODE_SNIPPETS_DIR
else 
	echo "$XCODE_SNIPPETS_DIR exists."
fi

# Copy all the code snippets to the Xcode snippets directory
cp *.codesnippet $XCODE_SNIPPETS_DIR
