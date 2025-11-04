# Projeto de Automação com Robot Framework e Appium

Este projeto contém testes automatizados para o aplicativo Android "Yodapp", utilizando Robot Framework e Appium.

## 📖 Sobre

O objetivo é demonstrar a automação de testes mobile em um aplicativo nativo, cobrindo funcionalidades como cliques, gestos e validações de tela.

## 🛠️ Pré-requisitos

Antes de começar, garanta que você tenha o seguinte ambiente configurado:

*   [Python](https://www.python.org/downloads/) (versão 3.8 ou superior)
*   [Node.js e npm](https://nodejs.org/en/) (para instalar o Appium)
*   [Java JDK](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html) (versão 8 ou 11)
*   [Android Studio](https://developer.android.com/studio) com um Emulador Android configurado.
*   [Appium Server](http://appium.io/):
    ```bash
    npm install -g appium
    ```
*   [Appium Doctor](https://github.com/appium/appium-doctor) (para verificar a configuração):
    ```bash
    npm install -g appium-doctor
    appium-doctor
    ```

## ⚙️ Instalação

1.  Clone este repositório:
    ```bash
    git clone <url-do-seu-repositorio>
    cd yodapp-robot
    ```

2.  Crie e ative um ambiente virtual (recomendado):
    ```bash
    python -m venv venv
    # Windows
    venv\Scripts\activate
    # macOS/Linux
    source venv/bin/activate
    ```

3.  Instale as dependências do Python:
    ```bash
    pip install -r requirements.txt
    ```

## 🚀 Executando os Testes

1.  **Inicie o servidor Appium** em um terminal:
    ```bash
    appium
    ```

2.  **Inicie o Emulador Android** através do Android Studio.

3.  **Execute os testes** em outro terminal, a partir da raiz do projeto:
    ```bash
    robot tests/
    ```

## 📊 Relatórios

Após a execução, os relatórios de teste (`log.html` e `report.html`) serão gerados na raiz do projeto.
