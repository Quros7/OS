# $1 - режим работы или --help
# $2 - адрес директории, резервную копию которой создаём
# $3 - какие файлы архивируем (расширение)
# $4 - адрес, куда сохранить бэкап
if [ $1 = '--help' ]
then
echo Creating an archive of files.
echo 1. Type needed mode. Choose \"create\" to create an archive.
echo 2. Type the address of directory you want to archivate.
echo 3. Type the extension by which you want to select files in the directory.
echo 4. Type the address where you want to save created archive.
echo Example: backup.sh create backup_d \.txt \"\.\/\"
elif [ $1 = 'create' ]
then
name="$(date +"%H%M%d%m%Y")"
tar -cf "$4/$name.tar" $2/*$3
fi