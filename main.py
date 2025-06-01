from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Bonjour depuis Google deploiement!'

@app.route('/info')
def info():
    return 'Cette application a été déployée sur Google cloud - Module 4 TP'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)