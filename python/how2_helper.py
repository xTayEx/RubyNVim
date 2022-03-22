import os
from InquirerPy import prompt

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
print(result)
question, language = result['question'], result['language']
os.system(f'how2 {question} -l {language}')
