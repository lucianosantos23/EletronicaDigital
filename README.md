# 💻 Repositório de Módulos em Verilog

Repositório contendo **módulos digitais implementados em Verilog**, cada um acompanhado de seu **testbench** para simulação e verificação.  
Os códigos seguem boas práticas de descrição em HDL e podem ser reutilizados em projetos maiores.

---

## ⚙️ Módulos Implementados

### 🔹 **Contador Síncrono**
Contador binário controlado por **clock** e **reset**, com suporte a contagem **crescente e decrescente**.

**🧩 Principais sinais:**
| Sinal | Função |
|-------|---------|
| `clk` | Sinal de clock |
| `reset` | Reinicia a contagem |
| `count` / `q` | Saída do valor atual |

---

### 🔹 **Deslocador Universal**
Realiza **deslocamentos lógicos e aritméticos**, tanto para a **esquerda quanto para a direita**.

**🧩 Funcionalidades:**
- Deslocamento lógico à esquerda/direita  
- Deslocamento aritmético à esquerda/direita  

---

### 🔹 **Display de 7 Segmentos**
Converte valores binários em **padrões de segmentos** compatíveis com **displays de 7 segmentos (ânodo comum)**.

**🧩 Funcionalidades:**
- Decodificação de números hexadecimais (0–F)  
- Saída formatada para display  

---

### 🔹 **Multiplexador (MUX)**
Seleciona uma das entradas com base em um **sinal de seleção**.

**🧩 Funcionalidades:**
- Seleção de entrada via sinal seletor  
- Implementação genérica (pode ser expandida para N entradas)  

---

### 🔹 **ULA – Unidade Lógica e Aritmética**
Executa **operações aritméticas e lógicas básicas** entre dois operandos.

**🧩 Operações Implementadas:**
- Soma (`+`), Subtração (`-`)  
- AND, OR, XOR, NOT  
- Comparações simples (`==`, `>`, `<`)  

---

## 🧪 Testbench

Cada módulo possui um **testbench dedicado** (`*_tb.v`) responsável por:
- Gerar sinais de **clock** e **reset**  
- Aplicar **casos de teste** para todas as funções  
- Exibir resultados no **console de simulação**  

💡 As simulações foram realizadas no **ModelSim / GTKWave**, mas são compatíveis com qualquer ambiente Verilog padrão.


---

## 🧰 Tecnologias Utilizadas

![Verilog](https://img.shields.io/badge/Verilog-ED8B00?style=for-the-badge&logo=verilog&logoColor=white)
![ModelSim](https://img.shields.io/badge/ModelSim-00457C?style=for-the-badge&logoColor=white)
![Quartus Prime](https://img.shields.io/badge/Quartus%20Prime-0071C5?style=for-the-badge&logo=intel&logoColor=white)


---

## 📜 Licença
Este projeto é de uso livre para fins acadêmicos e experimentais.  
Feito por Luciano Araújo

