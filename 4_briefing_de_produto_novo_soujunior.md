# **Briefing de Produto: Novo soujunior.tech**

Este documento serve como a bússola para as Squads durante os 15 dias de Hackathon. O papel das lideranças de Produto (PM/PO) e Design (UX/UI) é garantir que a equipe técnica não perca o foco no valor que precisamos entregar para a comunidade.

## **1\. Visão Geral e Propósito**

O site soujunior.tech é a vitrine principal da comunidade SouJunior. A missão deste hackathon é reformular completamente a interface e a experiência, criando um visual inovador, que fuja do corporativo engessado e seja altamente criativo. Ele deve focar em apresentar nossa essência, dar palco aos nossos números de impacto e direcionar o usuário com clareza para a plataforma externa de cadastro.

## **2\. O Público-Alvo (Personas)**

As equipes devem manter essas três personas em mente ao desenhar as jornadas de navegação:

> * **O Profissional Júnior:** Busca entender rapidamente o que é o projeto, encontrar apoio, compreender a dinâmica da comunidade e descobrir como dar o próximo passo rumo à primeira oportunidade.  
> * **O Voluntário/Mentor:** Profissionais plenos e seniores que desejam retribuir à comunidade atuando como mentores, criadores de conteúdo ou contribuidores técnicos em nossos repositórios.  
> * **As Empresas Parceiras:** Buscam validação institucional, tentando entender o impacto real da comunidade (através de dados) para possíveis parcerias e recrutamento.

## **3\. Princípios de Engenharia de Produto**

A excelência técnica só tem valor se resolver uma dor real. Recomendamos fortemente que as equipes adotem uma postura focada no impacto e centrada no usuário. Antes de definirem arquiteturas complexas ou escreverem o código, questionem o "porquê" de cada funcionalidade. A interface deve ser desenhada com empatia pelo desenvolvedor iniciante, garantindo que a proposta de valor da SouJunior e as chamadas para ação (CTAs) sejam inspiradoras, óbvias e sem atritos.

## **4\. Requisitos Obrigatórios do MVP (O que não pode faltar)**

| Seção / Componente | Objetivo e Comportamento Esperado   |
| :---- | :---- |
| **Hero Section (Apresentação Inicial)** | Visual criativo e de alto impacto que responda em 5 segundos: "O que é a SouJunior?". Deve conter o CTA principal (ex: "Junte-se à Comunidade") apontando para o cadastro externo. |
| **Como Funciona (O Ecossistema)** | Explicação visual e estruturada de como o projeto opera (Discord, repositórios open-source, mentorias, apoio mútuo). |
| **Mural de Dados e Impacto** | Área dedicada a mostrar a força da comunidade em números reais e atualizáveis (ex: pessoas apoiadas, repositórios ativos, etc.). |
| **Integração de Links (CTAs)** | Navegação limpa e clara direcionando o fluxo para fora da landing page no momento certo (Sistema Externo de Cadastro e Redes Sociais). |
| **Destaque para Apoia.se** | Seção visível e atrativa apresentando o apoio financeiro da comunidade, incentivando novos apoiadores e destacando que o projeto é mantido por doações. |

## **5\. Mapa Mental Sugerido (Arquitetura da Informação)**

As equipes têm liberdade criativa, mas sugerimos a seguinte organização mental para a estrutura da Single Page Application ou Landing Page:

`soujunior.tech/ (Home Principal)`  
 `├── #hero         -> O "Uau!" visual + Call to Action de Cadastro`  
 `├── #proposito    -> Quem somos e qual dor resolvemos`  
 `├── #metodologia  -> Como a comunidade opera na prática`  
 `├── #impacto      -> Números e métricas de crescimento`  
 `└── #footer       -> Navegação para o ecossistema externo`

`[Mapeamento de Destinos Externos Obrigatórios]`  
`- Cadastro/Login: (Link do Sistema Externo)`  
`- Open-Source: github.com/SouJunior`  
`- Comunidade (Dúvidas e Suporte): Discord Oficial (https://discord.gg/FkBcf3vdQZ)`  
`- Grupo de Avisos: WhatsApp Oficial (https://chat.whatsapp.com/JJzCMlqMKlw1YOhOk7QB3W)`  
`- Apoia.se: https://apoia.se/soujunior`
