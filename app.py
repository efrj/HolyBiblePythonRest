from bottle import Bottle, run, template, request, response
import sqlite3
import json

app = Bottle()

DB_PATH = 'db/KJV-PCE.db'

def dict_factory(cursor, row):
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d

def get_db_connection():
    conn = sqlite3.connect(DB_PATH)
    conn.row_factory = dict_factory
    return conn

@app.route('/')
def index():
    return template('index')

@app.route('/book/<book>/chapter/<chapter>')
def get_chapter(book, chapter):
    conn = get_db_connection()
    cursor = conn.cursor()
    
    cursor.execute("SELECT BookName FROM Bible WHERE BookAbr = ? AND Chapter = ? LIMIT 1", (book, chapter))
    book_info = cursor.fetchone()
    
    cursor.execute("SELECT Verse as verse, VText as text FROM Bible WHERE BookAbr = ? AND Chapter = ?", (book, chapter))
    verses = cursor.fetchall()
    
    conn.close()
    
    if book_info and verses:
        result = {
            "book": book_info['BookName'],
            "chapter": chapter,
            "verses": verses
        }
        return json.dumps(result)
    else:
        response.status = 404
        return json.dumps({"error": "Book or chapter not found"})

@app.route('/book/<book>/chapter/<chapter>/verse/<verse>')
def get_verse(book, chapter, verse):
    conn = get_db_connection()
    cursor = conn.cursor()
    
    cursor.execute("SELECT BookName, Chapter, Verse, VText FROM Bible WHERE BookAbr = ? AND Chapter = ? AND Verse = ?", (book, chapter, verse))
    result = cursor.fetchone()
    
    conn.close()
    
    if result:
        return json.dumps({
            "book": result['BookName'],
            "chapter": result['Chapter'],
            "verse": result['Verse'],
            "text": result['VText']
        })
    else:
        response.status = 404
        return json.dumps({"error": "Verse not found"})

if __name__ == '__main__':
    run(app, host='0.0.0.0', port=8080, debug=True)
