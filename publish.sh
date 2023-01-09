# create clean output
rm -rf ~/tmp/apple-ii-output
mkdir ~/tmp/apple-ii-output
cp -R Posts/* ~/tmp/apple-ii-output/.

#convert MD to gemtext
md2gemini --write --dir ~/tmp/apple-ii-output/ --frontmatter --img-tag='' --links images-only ~/tmp/apple-ii-output/*.md
rm ~/tmp/apple-ii-output/*.md

#md2gemini annoyingly this adds CRLF
dos2unix -q ~/tmp/apple-ii-output/*.gmi

#fix escaped square brackets in link lines
sed -i '' '/^=>/ s/\\\[/\[/' ~/tmp/apple-ii-output/*.gmi
sed -i '' '/^=>/ s/\\\]/\]/' ~/tmp/apple-ii-output/*.gmi

#generate index and add navigation links to the bottom of the posts
dotnet run --project ../ContentIndexer/ ~/tmp/apple-ii-output/ "Apple II History"