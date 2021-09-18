*** Settings ***
Library     hello.py


*** Test Case ***
Deve retornar mensagem de boas vindas
    ${MSG}=      hello_robot
    Should Be Equal     ${MSG}          ola, bem vindo ao curso de robot mobile.