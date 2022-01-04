# Unlock MS Word document

I wanted to unlock a MS Word document containing a form to add new information to it. I found [here](https://handyapps.es/desbloquear-word-protegido/) the steps to do it:
1. Save the document as `XML` using the MS Word save dialog.
2. Open the `XML` file with a text editor.
3. Look for the `«w:enforcement` string: it must be set to either `1` or `On`.
4. Change this valueu to `0` or `Off`.
5. Save the file and open it again with MS Word. The document must be unlocked now and you must be able to edit it and save it as MS Word again (`.doc` or `.docx`).
