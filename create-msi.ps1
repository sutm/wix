# generate wxs fragment for the files to be installed
#heat.exe dir "d:\temp\source" -dr "DSTDIR" -cg "FilesGroup" -gg -gl -sf -srd -var "var.SrcDir" -out "d:\temp\wxs\filesToInstall.wxs"

# define variable SrcDir, which is location of source files
$SrcDir = '-dSrcDir=d:\temp\source'

# compile wxs files
candle.exe -arch x86 $SrcDir -out "d:\temp\wixobj\" "d:\temp\wxs\product.wxs" "d:\temp\wxs\dialogs.wxs" "d:\temp\wxs\filesToInstall.wxs"

# link the obj files
light.exe -ext WixUIExtension -cultures:en-us -out "d:\temp\GIP80setup.msi" "d:\temp\wixobj\product.wixobj" "d:\temp\wixobj\dialogs.wixobj" "d:\temp\wixobj\filesToInstall.wixobj"

# output debug log
#msiexec /i "d:\temp\GIP80setup.msi" /l* "d:\temp\temp.log"