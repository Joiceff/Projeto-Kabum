# 🤖 Projeto de Automação - KaBuM! (Robot Framework + Selenium)

Este projeto realiza automações no site [KaBuM!](https://www.kabum.com.br), incluindo login, busca de produto, adição e remoção do item no carrinho.

---

## 🚀 Tecnologias Utilizadas

- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/)
- Python 3.8+
- Google Chrome + ChromeDriver

---

## 📦 Instalação

1. **Clone o repositório:**

```bash
git clone https://github.com/seuusuario/kabum_robot_carrinho.git
cd kabum_robot_carrinho
```

2. **Crie e ative um ambiente virtual (opcional, mas recomendado):**

```bash
python -m venv venv
venv\Scripts\activate   # Windows
```

3. **Instale as dependências:**

```bash
pip install -r requirements.txt
```

> Se não houver um `requirements.txt`, instale manualmente:

```bash
pip install robotframework selenium robotframework-seleniumlibrary
```

---

## 🧪 Estrutura de Pastas

```
kabum_robot_carrinho/
├── tests/
│   └── carrinho_compras.robot     # Arquivo principal de execução
├── resources/
│   └── carrinho_keywords.robot    # Keywords reutilizáveis
├── logs/                          # Relatórios gerados
├── README.md
```

---

## ▶️ Como Executar os Testes

### Execução completa:

```bash
robot -d ./logs tests/carrinho_compras.robot
```

### Execução por tag:

```bash
robot --include realizar_compra -d ./logs tests/carrinho_compras.robot
```

---

## ✅ Tags Disponíveis

- `realizar_compra` – Executa o fluxo completo de login, busca, adicionar e remover item do carrinho.
- Outras tags podem ser adicionadas conforme novos testes forem incluídos.

---

## 📄 Relatórios Gerados

Após a execução, os relatórios ficarão na pasta `logs/`:

- `log.html` – Log detalhado
- `report.html` – Sumário da execução
- `output.xml` – Saída em XML (usado por ferramentas de CI)

---

## 🙋‍♀️ Autor(a)

Joice Fernanda / Samuel Brandão *(personalize com seu nome ou GitHub)*