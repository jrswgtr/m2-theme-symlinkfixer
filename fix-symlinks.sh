basePath="/data/web/magento2"
themes=("Webwijs/intersport" "Webwijs/falconshop" "Webwijs/icepeak" "Webwijs/skikledingstore" "Webwijs/snowenco")
locales=("nl_NL" "en_US")
files=("css/webwijs.css")

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