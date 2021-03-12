#!/usr/bin/env python3
"""Plot data taken with Cryosub"""

import chart_studio.plotly as py
import plotly.graph_objs as go

import mysql.connector
import pandas as pd

conn = mysql.connector.connect(
    host="localhost",
    user="phdgc",
    password="cryosub1",
    db="cryosub"
)

cursor = conn.cursor()

cursor.execute('select id, time , demandCurrent ,  demandVoltage , measuredCurrent, measuredVoltage , measuredTemperature  from measuredData');

rows = cursor.fetchall()
#str(rows)[0:300]


df = pd.DataFrame( [[ij for ij in i] for i in rows] )
df.rename(columns={0: 'id', 1: 'time', 2: 'demandCurrent', 3: 'demandVoltage', 4:'measuredCurrent', 5:'measuredVoltage', 6:'measuredTemperature'}, inplace=True);
df = df.sort_values(['id'], ascending=[1]);

print(df)

trace1 = go.Scatter(
    x=df['id'],
    y=df['measuredTemperature'],
    text=df['time'],
    mode='markers'
)
layout = go.Layout(
    title='Temperature vs. sample ID',
    xaxis=dict( title='sample ID' ),
    yaxis=dict( title='temperature' )
)
data = [trace1]
fig = go.Figure(data=data, layout=layout)
py.iplot(fig, filename='Temperature vs. sample ID')
