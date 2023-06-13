from flask.views import MethodView
from flask import request, render_template, redirect
from src.db import pymysql


class index(MethodView):
    def get(self):
        return render_template('public/index.html')

    def post(self):
        code = request.form['code']
        name = request.form['name']
        stock = request.form['stock']
        value = request.form['value']
        category = request.form['category']

        print(code, name, stock, value, category)
        return 'Successfully registered product'
