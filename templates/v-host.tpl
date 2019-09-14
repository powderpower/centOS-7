<VirtualHost *:$2>
    ServerName $1
    DocumentRoot $htmlPath$3
    ErrorLog $logPath/error.log
    CustomLog $logPath/access.log combined

    <FilesMatch \.php$>
        SetHandler proxy:unix:/var/run/php-fpm/$php-fpm.sock|fcgi://localhost
    </FilesMatch>

</VirtualHost>