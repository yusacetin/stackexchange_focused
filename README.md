## Stack Exchange Focused
Remove basically everything other than the question, comments, and answers from Stack Exchange sites on Google Chrome.

### Installation
#### Chrome
* Clone or download the files
* Run 'make chrome' in the project root directory
* Make sure developer mode is enabled in Chrome
* Go to the URL [chrome://extensions](chrome://extensions)
* Click "Load unpacked" at the top left
* Select the [project root]/build/chrome_unpacked folder
#### Firefox
* Clone or download the files
* Run 'make firefox' in the project root directory
* Sign the file [project root]/build/firefox/stackexchange_focused_firefox.zip somehow. Firefox makes this painfully complicated.
* Go to the URL [about:addons](about:addons)
* Click the gear icon and then 'Install Add-on From File...'
* Select [project root]/build/firefox/stackexchange_focused_firefox.zip

### License
GNU General Public License version 3 or later. See LICENSE.txt for more information.
