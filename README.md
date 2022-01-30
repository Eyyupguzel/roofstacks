# RoofStacks
## _Case Çalışması_

[![N|Solid](https://github.com/Eyyupguzel/roofstacks/blob/main/roof_stacks/src/test/java/Karate_Features/roof.png)](https://nodesource.com/products/nsolid)

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

# Karate Caseleri - Create User
| Senaryo Adı | Senaryo Açıklaması | Risk | Öncelik | Regresyon Tipi | Beklenen Sonuç | Durum |
|-------------| ------ | ------| ------ | ------| ------ | ------|
| Create user - Min Deger | User create ederken içersindeki zorunlu input alanları alabileceği min değer ile girilir. | Orta | Orta | Günlük | Status Code 200 dönmesi beklenir. | OK |
| Create user - Ara Deger | User create ederken içersindeki zorunlu input alanları alabileceği min ve max  değer aralığında girilir. | Orta | Orta | Günlük | Status Code 200 dönmesi beklenir. | OK |
| Create User - Max Deger | User create ederken içersindeki zorunlu input alanları alabileceği max değer ile girilir. | Orta | Orta | Günlük | Status Code 200 dönmesi beklenir. | OK |
| Create user - Firstname Bos Olması | User create ederken zorunlu olan firstname alanın boş bırakılması. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create user - Lastname Bos Olması | User create ederken zorunlu olan lastname alanın boş bırakılması. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create user - Username Bos Olması | User create ederken zorunlu olan username alanın boş bırakılması. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK
| Create user - Firstname ve Lastname Bos Olması | User create ederken zorunlu olan firstname ve lastname alanlarının boş bırakılması. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create user - Firstname ve Username Bos Olması | User create ederken zorunlu olan firstname ve username alanlarının boş bırakılması. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create user - Lastname ve Username Bos Olması | User create ederken zorunlu olan lastname ve username alanlarının boş bırakılması. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create user - Firstname,Lastname ve Username Bos Olması | User create ederken zorunlu olan firstname,lastname ve username alanlarının boş bırakılması. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Firstname Alphanumeric | User create ederken Alpha only olması gereken firstname alanının Alphanumeric olarak girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Firstname Numeric | User create ederken Alpha only olması gereken firstname alanının Numeric olarak girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Firstname Symbol | User create ederken Alpha only olması gereken firstname alanının Symbol olarak girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Lastname Alphanumeric | User create ederken Alpha only olması gereken lastname alanının Alphanumeric olarak girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - lastname Numeric | User create ederken Alpha only olması gereken lastname alanının Numeric olarak girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Lastname Symbol | User create ederken Alpha only olması gereken lastname alanının Symbol olarak girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Username Alphanum only | User create ederken Alphanumeric olması gereken username alanının Alpha only olarak girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Username Numeric | User create ederken Alphanumeric olması gereken username alanının Numeric olarak girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Username Symbol | User create ederken Alphanumeric olması gereken username alanının Symbol olarak girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Firstname Min Değerin Altında | User create ederken firstname alanının min değerinin altında girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Lastname Min Değerin Altında | User create ederken lastname alanının min değerinin altında girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Username Min Değerin Altında | User create ederken username alanının min değerinin altında girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Firstname ve Lastname Min Değerin Altında | User create ederken firstname ve lastname alanlarının min değerinin altında girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Firstname ve Username Min Değerin Altında | User create ederken firstname ve username alanlarının min değerinin altında girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Lastname ve Username Min Değerin Altında | User create ederken lastname ve username alanlarının min değerinin altında girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - First,Lastname ve Username Min Değerin Altında | User create ederken first,lastname ve username alanlarının min değerinin altında girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Firstname Max Değerin Üstünde | User create ederken firstname alanının max değerinin üstünde girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Lastname Max Değerin Üstünde | User create ederken lastname alanının max değerinin üstünde girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Username Max Değerin Üstünde | User create ederken username alanının max değerinin üstünde girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Firstname ve Lastname Max Değerin Altında | User create ederken firstname ve lastname alanlarının max değerinin altında girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Firstname ve Username Max Değerin Altında | User create ederken firstname ve username alanlarının max değerinin altında girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Lastname ve Username Max Değerin Altında | User create ederken lastname ve username alanlarının max değerinin altında girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - First,Lastname ve Username Max Değerin Altında | User create ederken first,lastname ve username alanlarının max değerinin altında girilmesi. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Create User - Password Değerinin Girilmemesi | User create ederken zorunlu olmayan password alanının girilmemesi. | Düşük | Düşük | Günlük | Status Code 200 dönmesi beklenir. | OK |
# Karate Caseleri - Get User List
| Senaryo Adı | Senaryo Açıklaması | Risk | Öncelik | Regresyon Tipi | Beklenen Sonuç | Durum |
|-------------| ------ | ------| ------ | ------| ------ | ------|
| Get User List | Kullanıcı listesinin çağırılması. | Orta | Orta | Günlük | Status Code 200 dönmesi beklenir. | OK |
# Karate Caseleri - Get User ById
| Senaryo Adı | Senaryo Açıklaması | Risk | Öncelik | Regresyon Tipi | Beklenen Sonuç | Durum |
|-------------| ------ | ------| ------ | ------| ------ | ------|
| Get User ById | Kullanıcı id'si ile kullanıcının çağırılması. | Orta | Orta | Günlük | Status Code 200 dönmesi beklenir. | OK |
| Get User ById - Yanlış Kullanıcı Id'si | Yanlış kullanıcı id'si ile kullanıcı çağırılması. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
# Karate Caseleri - Remove User
| Senaryo Adı | Senaryo Açıklaması | Risk | Öncelik | Regresyon Tipi | Beklenen Sonuç | Durum |
|-------------| ------ | ------| ------ | ------| ------ | ------|
| Remove User | Kullanıcı id'si ile kullanıcının silinmesi. | Yüksek | Yüksek | Günlük | Status Code 200 dönmesi beklenir. | OK |
| Remove User - Yanlış Kullanıcı Id'si | Yanlış kullanıcı id'si ile kullanıcı silinmesi. | Orta | Orta | Günlük | Status Code 400 dönmesi beklenir. | OK |
# Karate Caseleri - Remove User
| Senaryo Adı | Senaryo Açıklaması | Risk | Öncelik | Regresyon Tipi | Beklenen Sonuç | Durum |
|-------------| ------ | ------| ------- | ------| ------ | ------|
| Switch User Activity - True | Kullanıcı id'si ile kullanıcıyı aktif etme. | Yüksek | Yüksek | Günlük | Status Code 200 dönmesi beklenir. | OK |
| Switch User Activity - False | Kullanıcı id'si ile kullanıcıyı pasif etme. | Yüksek | Yüksek | Günlük | Status Code 200 dönmesi beklenir. | OK |
| Switch User - isActive Boş | Kullanıcı aktifliği güncellenirken zorunlu olan isActive alanının boş bırakılması. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |
| Switch User -  - Boolean Değer Girmeme | isActive alanına boolean değer dışında bir değer girme. | Yüksek | Yüksek | Günlük | Status Code 400 dönmesi beklenir. | OK |


Dillinger is a cloud-enabled, mobile-ready, offline-storage compatible,
AngularJS-powered HTML5 Markdown editor.

- Type some Markdown on the left
- See HTML in the right
- ✨Magic ✨

## Features

- Import a HTML file and watch it magically convert to Markdown
- Drag and drop images (requires your Dropbox account be linked)
- Import and save files from GitHub, Dropbox, Google Drive and One Drive
- Drag and drop markdown and HTML files into Dillinger
- Export documents as Markdown, HTML and PDF

Markdown is a lightweight markup language based on the formatting conventions
that people naturally use in email.
As [John Gruber] writes on the [Markdown site][df1]

> The overriding design goal for Markdown's
> formatting syntax is to make it as readable
> as possible. The idea is that a
> Markdown-formatted document should be
> publishable as-is, as plain text, without
> looking like it's been marked up with tags
> or formatting instructions.

This text you see here is *actually- written in Markdown! To get a feel
for Markdown's syntax, type some text into the left window and
watch the results in the right.

## Tech

Dillinger uses a number of open source projects to work properly:

- [AngularJS] - HTML enhanced for web apps!
- [Ace Editor] - awesome web-based text editor
- [markdown-it] - Markdown parser done right. Fast and easy to extend.
- [Twitter Bootstrap] - great UI boilerplate for modern web apps
- [node.js] - evented I/O for the backend
- [Express] - fast node.js network app framework [@tjholowaychuk]
- [Gulp] - the streaming build system
- [Breakdance](https://breakdance.github.io/breakdance/) - HTML
to Markdown converter
- [jQuery] - duh

And of course Dillinger itself is open source with a [public repository][dill]
 on GitHub.

## Installation

Dillinger requires [Node.js](https://nodejs.org/) v10+ to run.

Install the dependencies and devDependencies and start the server.

```sh
cd dillinger
npm i
node app
```

For production environments...

```sh
npm install --production
NODE_ENV=production node app
```

## Plugins

Dillinger is currently extended with the following plugins.
Instructions on how to use them in your own application are linked below.

| Plugin | README |
| ------ | ------ |
| Dropbox | [plugins/dropbox/README.md][PlDb] |
| GitHub | [plugins/github/README.md][PlGh] |
| Google Drive | [plugins/googledrive/README.md][PlGd] |
| OneDrive | [plugins/onedrive/README.md][PlOd] |
| Medium | [plugins/medium/README.md][PlMe] |
| Google Analytics | [plugins/googleanalytics/README.md][PlGa] |

## Development

Want to contribute? Great!

Dillinger uses Gulp + Webpack for fast developing.
Make a change in your file and instantaneously see your updates!

Open your favorite Terminal and run these commands.

First Tab:

```sh
node app
```

Second Tab:

```sh
gulp watch
```

(optional) Third:

```sh
karma test
```

#### Building for source

For production release:

```sh
gulp build --prod
```

Generating pre-built zip archives for distribution:

```sh
gulp build dist --prod
```

## Docker

Dillinger is very easy to install and deploy in a Docker container.

By default, the Docker will expose port 8080, so change this within the
Dockerfile if necessary. When ready, simply use the Dockerfile to
build the image.

```sh
cd dillinger
docker build -t <youruser>/dillinger:${package.json.version} .
```

This will create the dillinger image and pull in the necessary dependencies.
Be sure to swap out `${package.json.version}` with the actual
version of Dillinger.

Once done, run the Docker image and map the port to whatever you wish on
your host. In this example, we simply map port 8000 of the host to
port 8080 of the Docker (or whatever port was exposed in the Dockerfile):

```sh
docker run -d -p 8000:8080 --restart=always --cap-add=SYS_ADMIN --name=dillinger <youruser>/dillinger:${package.json.version}
```

> Note: `--capt-add=SYS-ADMIN` is required for PDF rendering.

Verify the deployment by navigating to your server address in
your preferred browser.

```sh
127.0.0.1:8000
```

## License

MIT

**Free Software, Hell Yeah!**

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>

   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]: <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
   [PlMe]: <https://github.com/joemccann/dillinger/tree/master/plugins/medium/README.md>
   [PlGa]: <https://github.com/RahulHP/dillinger/blob/master/plugins/googleanalytics/README.md>
