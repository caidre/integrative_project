# 🏭 Projeto Integrador com AWS

Este projeto tem como objetivo utilizar tecnologia 
e automação para otimizar a separação dos 
materiais recicláveis, aumentando a eficiência do 
processo e aprimorando a análise de dados para 
tomada de decisões.


## 📈 Fluxo Geral do Projeto

1. **Sensores Industriais** enviam dados para o **CLP (Controlador Lógico Programável)**.
2. O **CLP** processa os sinais e envia os dados via protocolo **OPC UA**.
3. O **Node-RED** atua como **Gateway**, capturando os dados do servidor OPC UA e os enviando para a nuvem.
4. Dados são transmitidos para o **API Gateway** na AWS, que serve como ponto de entrada para o backend.
5. O **Lambda** processa os dados recebidos, armazenando e analisando conforme necessário.
6. Dados são armazenados em bancos **SQL (Login)** e **NoSQL (Métricas)**.
7. O **CloudWatch** monitora o sistema e envia alertas via **SNS**.
8. Informações são exibidas em **Dashboards Web e Mobile**, além de um **Chatbot** com acesso a dados em tempo real.

## ☁️ Serviços AWS Utilizados

### 1. **Amazon API Gateway**
- **Função:** Porta de entrada para as requisições externas que chegam do Node-RED.
- **Uso no Projeto:** Recebe os dados do Gateway Node-RED e os encaminha para a função Lambda.
- **Benefício:** Escalável, seguro e sem servidor, permite controle de tráfego e autenticação.

---

### 2. **AWS Lambda**
- **Função:** Computação serverless para processar os dados recebidos.
- **Uso no Projeto:**
  - Processa os dados industriais.
  - Consulta e grava dados em bancos de dados SQL/NoSQL.
  - Interage com o chatbot e dashboards.
- **Benefício:** Custo baseado em uso, sem necessidade de provisionamento de servidores.

---

### 3. **Amazon RDS (Login - SQL)**
- **Função:** Armazenamento relacional dos dados de login e autenticação.
- **Uso no Projeto:** Controla acessos ao sistema via Dashboard, Mobile e Chatbot.

---

### 4. **Amazon DynamoDB (Metrics - NoSQL)**
- **Função:** Armazenamento NoSQL escalável e rápido.
- **Uso no Projeto:** Armazena métricas em tempo real dos sensores (temperatura, pressão, etc).
- **Benefício:** Alta performance para leitura e escrita rápida.

---

### 5. **Amazon CloudWatch**
- **Função:** Monitoramento e observabilidade.
- **Uso no Projeto:**
  - Logs das execuções das funções Lambda.
  - Alarmes configurados para condições críticas.
  - Dashboards de monitoramento em tempo real.
- **Benefício:** Análise de desempenho, alertas automáticos e visualização.

---

### 6. **Amazon SNS (Simple Notification Service)**
- **Função:** Serviço de envio de notificações.
- **Uso no Projeto:**
  - Notificação em tempo real em caso de falha, anomalias ou limites excedidos.
  - Integração com CloudWatch para envio automático.
- **Benefício:** Comunicação ágil via e-mail, SMS ou HTTP.

---

### 7. **IAM (Identity and Access Management)**
- **Função:** Gerenciamento de acesso seguro aos recursos da AWS.
- **Uso no Projeto:**
  - Criação de políticas específicas para Lambda, DynamoDB, RDS, etc.
  - Controle de permissões para usuários e serviços.
