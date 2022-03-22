import os
from time import sleep
from InquirerPy import prompt

how2_path = '/home/xtayex/.nvm/versions/node/v12.18.0/bin/how2'
set_proxy_command = [
    "export windows_host=`cat /etc/resolv.conf | grep nameserver | awk '{print $2}'`",
    "export HTTPS_PROXY=http://$windows_host:7890",
    "export HTTP_PROXY=http://$windows_host:7890",
    "export ALL_PROXY=http://$windows_host:7890",
]

for command in set_proxy_command:
    os.system(command)

questions = [
    {
        'type': 'input',
        'message': 'What question do you want to ask?',
        'name': 'question'
    },
    {
        'type': 'input',
        'message': 'What \'s the language of your question?',
        'name': 'language'
    }
]

result = prompt(questions)
question, language = result['question'], result['language']
os.system(f'{how2_path} {question} -l {language}')
sleep(10)
