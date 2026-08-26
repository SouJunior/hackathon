# AGENTS.md

## Repository Overview

This is a **documentation-only** repository for the SouJunior Hackathon event (Sept 11-25). All content is in Brazilian Portuguese. There is no application code, build system, or tests.

## Structure

| File | Description |
|------|-------------|
| `README.md` | GitHub entry point (keep uppercase) |
| `AGENTS.md` | Agent instructions (keep uppercase) |
| `0_index.md` | Documentation hub with reading order |
| `1_inscricao.md` | Registration - WhatsApp and Google Form |
| `2_desafio_site_soujunior.tech.md` | Main challenge description |
| `3_regulamento_oficial_hackathon_soujunior.md` | Rules and evaluation criteria |
| `4_briefing_de_produto_novo_soujunior.md` | Product requirements (PRD) |
| `5_times.md` | Team formation guidelines |
| `6_cronograma_sugerido_15_dias.md` | 15-day sprint schedule |
| `7_parceiros.md` | Partnership/sponsorship proposals |
| `8_submissao.md` | Submission requirements |

## File Naming Rules

### Convention
- **Lowercase only**: all file names must be lowercase
- **Underscores**: use `_` instead of spaces or hyphens
- **No accents**: remove accents from file names (Inscrição → Inscricao)
- **Numerical prefix**: files are prefixed with `0-8` for reading order

### Exceptions
- `README.md` — GitHub convention, keep uppercase
- `AGENTS.md` — OpenCode convention, keep uppercase

### Pattern
```
^[0-9]+_[a-z0-9_]+\.md$
```

## Link Validation

**CRITICAL**: All internal links must be valid. Before committing:

1. Run the validation script: `./scripts/validate-links.sh`
2. Fix any broken links reported
3. Never commit with broken links

### Link Rules
- Use relative paths: `[Text](filename.md)`
- URL-encode spaces if any (use `_` instead)
- External links: keep intact, do not modify

## Conventions

- All files are markdown with Portuguese content
- `0_index.md` is the central navigation hub
- Update `0_index.md` when adding/removing docs
- Keep markdown tables aligned as-is

## When Editing

- Preserve Portuguese text and formatting
- Follow file naming rules strictly
- Run link validation before committing
- Update `0_index.md` if adding new files
