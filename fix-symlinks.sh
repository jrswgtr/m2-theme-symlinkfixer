basePath="/data/web/magento2"
themes=("VendorA/theme1" "VendorB/theme2")
locales=("nl_NL" "en_US")
files=("css/styles.css")

for theme in "${themes[@]}"
do
    :
    for locale in "${locales[@]}"
    do
        :
        for file in "${files[@]}"
        do
            :
            sourcePath="$basePath/app/design/frontend/$theme/web/$file"
            targetPath="$basePath/pub/static/frontend/$theme/$locale/$file"

            rm "$targetPath"
            ln -s "$sourcePath" "$targetPath"
            echo "Created symbolic link from $sourcePath to $targetPath"
        done
    done
done