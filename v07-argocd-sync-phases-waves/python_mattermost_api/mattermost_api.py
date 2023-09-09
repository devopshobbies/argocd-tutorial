from mattermostdriver import Driver
from os import environ
import json

server = Driver({
    'url': environ['url'],
    'token': environ['token'],
    'scheme': environ['scheme'],
    'port': int(environ['port'])
})

server.login()

channel_name = environ['channel_name']
team_name = environ['team_name']

channel_id = server.channels.get_channel_by_name_and_team_name(team_name, channel_name)['id']

server.posts.create_post(options = {
    'channel_id': channel_id,
    'message': environ['message']
})
