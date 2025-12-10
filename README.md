# ABAP AI SDK
Repository gives examples and instruction to ABAP AI SDK:
- ISLM scenario creation
- ABAP code snippets with ISLM execution
- AI Core GENAI execution

# Prerequisites 
- AI Core instance in BTP
- Communication arrangement [SAP_COM_A069](https://help.sap.com/docs/btp/sap-business-technology-platform/how-to-configure-communication-system-for-sap-com-0a69-7d691a07627442a3b1d07000417c8056?locale=en-US)
  
  <img width="641" height="171" alt="AI Core Communication Arrangement" src="https://github.com/user-attachments/assets/a8ebf25e-81d5-4e2f-b597-550b3cdddca6" />

 
# Intelligent Scenario Lifecycle Management (ISLM)
Resources: https://help.sap.com/docs/ABAP_PLATFORM_NEW/7989a582039547ae91d8f483e487058d/b372e131450c47f3a3cc30e135291e63.html?locale=en-US&version=LATEST

## Create ISLM Scenario
Open ADT and run the following
   **New -> Other -> Intelligent Scenario**
   
   <img width="963" height="507" alt="ISLM Scenario" src="https://github.com/user-attachments/assets/d672bc89-7cef-4530-b39f-79886e65cc50" /><br/><br/>

   | Field  | Value |
| ------------- | ------------- |
| ISLM Type | Content Cell  |
| Automate turnkey Switch on  | Check the checkbox  |
| Usage type | CUSTOMER  |

## Create ISLM Model
Open ADT and run the following
   **New -> Other -> Intelligent Scenario Model**

<img width="961" height="528" alt="ISLM Model" src="https://github.com/user-attachments/assets/58ea3112-f8f2-473b-8f93-7016372d27e0" /><br><br>

   | Field  | Value |
| ------------- | ------------- |
| Executable Id | azure-openai  |
| LLM Name  | GPT-40  |
| LLM Version | 2024-11-20  |

## Short summary
- SAP AI Launchpad - GPT40 model is deployed
  <img width="1331" height="855" alt="AI Core" src="https://github.com/user-attachments/assets/b3f76892-739b-4ef7-89c5-9bc6b9c40ed5" />
- Communication Arrangement SAP_COM_A069 is setup (connection to AI Core from BTP ABAP cloud established)
  <img width="1180" height="545" alt="Communication Arrangement SAP_COM_A069 " src="https://github.com/user-attachments/assets/202770a7-010e-4928-ae9d-084346e1a793" />

## ABAP AI SDK example
1. Create instance of ISLM in ABAP
   

