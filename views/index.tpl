<!DOCTYPE HTML>
<html>
<head>
<title>Holy Bible Python Rest</title>
<meta charset="utf-8" />

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/cerulean/bootstrap.min.css" rel="stylesheet" integrity="sha384-zF4BRsG/fLiTGfR9QL82DrilZxrwgY/+du4p/c7J72zZj+FLYq4zY00RylP9ZjiT" crossorigin="anonymous">

<style type="text/css">
body {
  padding-top: 70px;
  padding-bottom: 30px;
}

.theme-dropdown .dropdown-menu {
  position: static;
  display: block;
  margin-bottom: 20px;
}

.theme-showcase > p > .btn {
  margin: 5px 0;
}

.theme-showcase .navbar .container {
  width: auto;
}
.list-group-item {
  display: list-item;
}
</style>

</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/"><span class="glyphicon glyphicon-book"></span> Holy Bible Python Rest</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/">Home</a></li>
                <li><a href="https://github.com/efrj/HolyBiblePythonRest">Fork me on GitHub</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Holy Bible Python Rest</h1>

            <p>Holy Bible Python Rest is a simple and easy-to-execute REST application that returns Holy Bible verses in JSON format.</p>
            <p>The translation of the Holy Bible used in this application is the King James version.</p>
            <p>This application was developed with the Python programming language with the micro framework Bottle and SQLite database.</p>

            <h2>Instructions</h2>

            <h3>Install</h3>

            <p>To start, go to the directory where the application is through the console and run the <em>'pip install -r requirements.txt'</em> command to install the application dependencies.</p>

            <p>Then use the 'python app.py' command to run the application.</p>

            <p>View the application in the browser at the address: <em>'http://localhost:8080'</em>.</p>

            <h3>Using the REST API</h3>

            <p>For some biblical verse format JSON, enter the book abbreviation, chapter and verse number in the URL to get the desired passage.</p>

            <h4>See the example:</h4>
            <code>http://localhost:8080/book/Re/chapter/4/verse/10</code>

            <h5>JSON Return</h5>
            <pre>{"book":"Revelation","chapter":"4","verse":"10","text":"The four and twenty elders fall down before him that sat on the throne, and worship him that liveth for ever and ever, and cast their crowns before the throne, saying,"}</pre>

            <hr>

            <p>To get all the verses of a chapter, enter the abbreviation of the book and the chapter number in the URL.</p>

            <h4>See the example:</h4>
            <code>http://localhost:8080/book/Re/chapter/4</code>

            <h5>JSON Return</h5>
            <pre>{"book":"Revelation","chapter":"4","verses":[{"verse":"1","text":"After this I looked, and, behold, a door [was] opened in heaven: and the first voice which I heard [was] as it were of a trumpet talking with me; which said, Come up hither, and I will shew thee things which must be hereafter."},{"verse":"2","text":"And immediately I was in the spirit: and, behold, a throne was set in heaven, and [one] sat on the throne."},{"verse":"3","text":"And he that sat was to look upon like a jasper and a sardine stone: and [there was] a rainbow round about the throne, in sight like unto an emerald."},{"verse":"4","text":"And round about the throne [were] four and twenty seats: and upon the seats I saw four and twenty elders sitting, clothed in white raiment; and they had on their heads crowns of gold."},{"verse":"5","text":"And out of the throne proceeded lightnings and thunderings and voices: and [there were] seven lamps of fire burning before the throne, which are the seven Spirits of God."},{"verse":"6","text":"And before the throne [there was] a sea of glass like unto crystal: and in the midst of the throne, and round about the throne, [were] four beasts full of eyes before and behind."},{"verse":"7","text":"And the first beast [was] like a lion, and the second beast like a calf, and the third beast had a face as a man, and the fourth beast [was] like a flying eagle."},{"verse":"8","text":"And the four beasts had each of them six wings about [him]; and [they were] full of eyes within: and they rest not day and night, saying, Holy, holy, holy, Lord God Almighty, which was, and is, and is to come."},{"verse":"9","text":"And when those beasts give glory and honour and thanks to him that sat on the throne, who liveth for ever and ever,"},{"verse":"10","text":"The four and twenty elders fall down before him that sat on the throne, and worship him that liveth for ever and ever, and cast their crowns before the throne, saying,"},{"verse":"11","text":"Thou art worthy, O Lord, to receive glory and honour and power: for thou hast created all things, and for thy pleasure they are and were created."}]}</pre>

            <hr>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h2>List of books with their respective abbreviations for you to use in the book parameter of the URL</h2>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h3>Old Testament</h3>
            <ol class="list-group">
                <li class="list-group-item">Genesis - Ge</li>
                <li class="list-group-item">Exodus - Ex</li>
                <li class="list-group-item">Leviticus - Le</li>
                <li class="list-group-item">Numbers - Nu</li>
                <li class="list-group-item">Deuteronomy - De</li>
                <li class="list-group-item">Joshua - Jos</li>
                <li class="list-group-item">Judges - Jg</li>
                <li class="list-group-item">Ruth - Ru</li>
                <li class="list-group-item">1 Samuel - 1Sa</li>
                <li class="list-group-item">2 Samuel - 2Sa</li>
                <li class="list-group-item">1 Kings - 1Ki</li>
                <li class="list-group-item">2 Kings - 2Ki</li>
                <li class="list-group-item">1 Chronicles - 1Ch</li>
                <li class="list-group-item">2 Chronicles - 2Ch</li>
                <li class="list-group-item">Ezra - Ezr</li>
                <li class="list-group-item">Nehemiah - Ne</li>
                <li class="list-group-item">Esther - Es</li>
                <li class="list-group-item">Job - Job</li>
                <li class="list-group-item">Psalms - Ps</li>
                <li class="list-group-item">Proverbs - Pr</li>
                <li class="list-group-item">Ecclesiastes - Ec</li>
                <li class="list-group-item">Song of Solomon - Song</li>
                <li class="list-group-item">Isaiah - Isa</li>
                <li class="list-group-item">Jeremiah - Jer</li>
                <li class="list-group-item">Lamentations - La</li>
                <li class="list-group-item">Ezekiel - Eze</li>
                <li class="list-group-item">Daniel - Da</li>
                <li class="list-group-item">Hosea - Ho</li>
                <li class="list-group-item">Joel - Joe</li>
                <li class="list-group-item">Amos - Am</li>
                <li class="list-group-item">Obadiah - Ob</li>
                <li class="list-group-item">Jonah - Jon</li>
                <li class="list-group-item">Micah - Mic</li>
                <li class="list-group-item">Nahum - Na</li>
                <li class="list-group-item">Habakkuk - Hab</li>
                <li class="list-group-item">Zephaniah - Zep</li>
                <li class="list-group-item">Haggai - Hag</li>
                <li class="list-group-item">Zechariah - Zec</li>
                <li class="list-group-item">Malachi - Mal</li>
            </ol>
        </div>
        <div class="col-md-6">
            <h3>New Testament</h3>
            <ol class="list-group">
                <li class="list-group-item">Matthew - Mt</li>
                <li class="list-group-item">Mark - Mr</li>
                <li class="list-group-item">Luke - Lu</li>
                <li class="list-group-item">John - Joh</li>
                <li class="list-group-item">Acts - Ac</li>
                <li class="list-group-item">Romans - Ro</li>
                <li class="list-group-item">1 Corinthians - 1Co</li>
                <li class="list-group-item">2 Corinthians - 2Co</li>
                <li class="list-group-item">Galatians - Ga</li>
                <li class="list-group-item">Ephesians - Eph</li>
                <li class="list-group-item">Philippians - Php</li>
                <li class="list-group-item">Colossians - Col</li>
                <li class="list-group-item">1 Thessalonians - 1Th</li>
                <li class="list-group-item">2 Thessalonians - 2Th</li>
                <li class="list-group-item">1 Timothy - 1Ti</li>
                <li class="list-group-item">2 Timothy - 2Ti</li>
                <li class="list-group-item">Titus - Tit</li>
                <li class="list-group-item">Philemon - Phm</li>
                <li class="list-group-item">Hebrews - Heb</li>
                <li class="list-group-item">James - Jas</li>
                <li class="list-group-item">1 Peter - 1Pe</li>
                <li class="list-group-item">2 Peter - 2Pe</li>
                <li class="list-group-item">1 John - 1Jo</li>
                <li class="list-group-item">2 John - 2Jo</li>
                <li class="list-group-item">3 John - 3Jo</li>
                <li class="list-group-item">Jude - Jude</li>
                <li class="list-group-item">Revelation - Re</li>
            </ol>
        </div>
    </div>

</div>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>
