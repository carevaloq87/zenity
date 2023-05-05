# zenity

This repo shows how to use Zenity to create interactive GUI in BASH

## Useful commands in Zenity

### Pop-up box with message

`zenity --info --text="Hello VARIABLE" --no-wrap`

#### Type of boxes

`--warning`
`--info`
`--error`
`--question`

### Pop-up box with entry option

`zenity --entry --title=""`

### Pop-up list

`zenity --list --title="List of box" --column="Id" --column="Name" id_option_1 "Option 1" id_option_2 "option 2" id_option_3 "Option 3"`

### File selection filtering by extension

`zenity --file-selection --title="Select a file" --file-filter="*.extension"`

### Confirmation Pop-up Box

`zenity --question --title="HTML viewer" --text="Would you like to open this file with Browser?"`

### Notification to OS

`notify-send "File Downloader" "Download complete: app.log"`

### Select a Calendar Date

`zenity --calendar`

## Useful commands in Bash

### Declare Variable

`VARIABLE_NAME=$()`

### Check if lenght of string/variable is nonzero

`if [ -n "$VARIABLE_NAME" ]`

### Check if variable is set

`if [ -z "$VARIABLE_NAME" ] or if [ -v "$VARIABLE_NAME" ]`  

### Open a file in a preferred application

`xdg-open "file://${VARIABLE_NAME}"`

### Writing to a file

- The `>` redirection operator writes the output to a given file. If the file exists, it is truncated to zero length. Otherwise, the file is created. Be extra careful when using this operator as you may overwrite an important file.
- The `>>` redirection operator appends the output to a given file. The file is created if it does not exist.

`echo "The message" > "text.txt"`
`echo $VARIABLE > "text.txt"`

To avoid overriding a file enable the "noclobber" option

`set -o noclobber`
`echo "The message" > "text.txt"`

This should return the following output:

`bash: text.txt: cannot overwrite existing file`

- The `>|` operator allows you to override the Bash “noclobber” option:

`echo "The message" >| text.txt`

- The `>>` operator append the output to the end of the file, rather than overwriting the file:

`echo "this is a line" >> file.txt`

## Credits

The following articles contributed to the content of this repository

- <https://medium.com/swlh/how-to-modernize-your-bash-scripts-by-adding-gui-cba613a34cb7>
- <https://linuxize.com/post/bash-write-to-file/>
