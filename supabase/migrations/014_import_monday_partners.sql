-- ============================================================
-- FBR Admin — Importação Monday → Parcerias (Fase 5)
-- Gerado por scripts/import-monday-parceiros.js
-- ⚠ EXECUTAR UMA SÓ VEZ no Supabase SQL Editor
-- ============================================================
--
-- Origem: 4 Excel exportados do Monday em public/
--   Wedding_Planners_1778232249.xlsx
--   Floristas_1778232269.xlsx
--   Quintas_de_Eventos_1778232283.xlsx
--   Outros_contactos_1778232307.xlsx
--
-- Decisões:
--   • Estado 'Contactado 🌼' → tentativa_contacto
--   • Coluna 'Ações' → 1 acção pendente por parceiro (excepto 'Nada a fazer')
--   • Histórico de interações: canal inferido do texto (email/whatsapp/telefone/reuniao/outro)
--   • Telemóveis adicionais extraídos das notas (formato 9 dígitos PT)
--   • Todos os updates foram registados pela MJ → by = 'info+mj@floresabeirario.pt'
-- ============================================================

BEGIN;

-- ── WEDDING_PLANNERS (101 parceiros) ──

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Isilda Oliveira',
  'wedding_planners',
  'por_contactar',
  NULL,
  'm.isilda-fafe@hotmail.com',
  '[{"label":null,"number":"933786543"}]'::jsonb,
  '{"https://www.instagram.com/isilda.oliveira.weddingplanner"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"17a70c0c-6096-4a88-80e0-df80d18fde36","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.010Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Teles eventos',
  'wedding_planners',
  'por_contactar',
  NULL,
  'geral@teleseventos.pt​',
  '[{"label":null,"number":"934553450"}]'::jsonb,
  '{"https://teleseventos.pt/"}'::text[],
  'Braga, Portugal',
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"3c2ec4b3-af29-4da7-a5f7-84945047bbd3","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.010Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'AR events',
  'wedding_planners',
  'por_contactar',
  'Abigail',
  'info@arweddings.co.uk',
  '[]'::jsonb,
  '{"https://www.arweddings.co.uk/"}'::text[],
  'Europa',
  'a_confirmar',
  'em inglês. fazem maioritariamente no uk',
  '[]'::jsonb,
  '[{"id":"cecd6718-4018-4433-aaea-ff2df8a08492","title":"Enviar email/form","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.011Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Griffin by Mariana Duarte',
  'wedding_planners',
  'por_contactar',
  NULL,
  'hello@griffinevents.eu',
  '[]'::jsonb,
  '{"https://griffinevents.eu/"}'::text[],
  'Europa',
  'a_confirmar',
  'trabalham em portugal, suiça e itália.',
  '[]'::jsonb,
  '[{"id":"746c4a9d-ca5e-4dc7-8425-52131b0a618c","title":"Enviar email/form","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.011Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Oh! Happy Events!',
  'wedding_planners',
  'por_contactar',
  'Mariana Amaral 
Patrícia Fonte',
  'ohhappyevents.geral@gmail.com',
  '[]'::jsonb,
  '{"https://www.instagram.com/ohhappy.events/"}'::text[],
  NULL,
  'a_confirmar',
  'tem um destaque no insta chamado "parcerias"',
  '[]'::jsonb,
  '[{"id":"57c1dae7-2ebe-4040-8f83-e3d4c748d4f9","title":"Enviar email/form","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.011Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Fernanda Martinez | Destination Wedding Planner in Portugal',
  'wedding_planners',
  'por_contactar',
  NULL,
  'hello@fernanda.events',
  '[{"label":null,"number":"919414906"}]'::jsonb,
  '{"https://www.fernanda.events/"}'::text[],
  'Lisboa, Portugal',
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"1abba983-777e-41a9-97e9-1395b75f9463","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.011Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Apoema events | Petra Simões',
  'wedding_planners',
  'por_contactar',
  NULL,
  'info@apoemaevents.com',
  '[{"label":null,"number":"918781437"}]'::jsonb,
  '{"https://www.apoemaevents.com/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"1b99566a-e22f-453b-bdd7-b77c5680cf32","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.011Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Círculo das Fábulas',
  'wedding_planners',
  'por_contactar',
  NULL,
  'dianaespecial@circulodasfabulas.com',
  '[{"label":null,"number":"928122667"}]'::jsonb,
  '{"https://www.facebook.com/profile.php?id=100087634650087#"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"850ba623-9fbf-45ac-afb8-16d1630ad1de","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.011Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Forever Events Portugal',
  'wedding_planners',
  'por_contactar',
  NULL,
  'info@forevereventsportugal.com',
  '[{"label":null,"number":"913523087"}]'::jsonb,
  '{"https://www.facebook.com/forevereventsportugal/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[{"id":"95f1615a-8489-45fa-b20b-5ab39dba247f","date":"2026-01-18T20:05:18.000Z","channel":"telefone","summary":"28-07-25 - não atendeu\n\n11-09-25 - só fala em INGLÊS. Um de vocês que ligue","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"6278ec78-7c1d-4efb-b89d-67628043a280","title":"Ligar em Inglês","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.012Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Portugal Wedding Planners',
  'wedding_planners',
  'por_contactar',
  NULL,
  'wedding@portugalweddingplanners.com',
  '[{"label":null,"number":"967457757"}]'::jsonb,
  '{"https://portugalweddingplanners.com/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"f72e218c-8ff8-4b2a-818d-8f6d6177402b","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.012Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Say yes weddings',
  'wedding_planners',
  'por_contactar',
  NULL,
  'info@sayesweddings.com',
  '[{"label":null,"number":"912884414"}]'::jsonb,
  '{"https://sayesweddings.com/en/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"1471e1f7-4850-4018-92aa-a63c61fc2a81","title":"Ligar em Inglês","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.012Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'White Dots',
  'wedding_planners',
  'por_contactar',
  NULL,
  'hello@white-dots.com',
  '[{"label":null,"number":"932448599"}]'::jsonb,
  '{"https://white-dots.com/wedding-plannner-portugal/"}'::text[],
  'Lisboa, Portugal',
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"2a08f00b-4db9-451d-ab0a-d3cb45c7b140","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.012Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'White Glove',
  'wedding_planners',
  'por_contactar',
  NULL,
  'info@whiteglove.pt',
  '[{"label":null,"number":"215925872"}]'::jsonb,
  '{"https://www.instagram.com/whiteglove_portugal_weddings/"}'::text[],
  'Lisboa, Portugal',
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"d62d0c0e-ef72-485a-9806-c3d178739728","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.012Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Parties2Remember',
  'wedding_planners',
  'por_contactar',
  NULL,
  'claudiageraldeswp@gmail.com',
  '[{"label":null,"number":"968438960"}]'::jsonb,
  '{"https://event-planner.parties2remember.com/"}'::text[],
  NULL,
  'a_confirmar',
  'trabalha em portugal e na suiça',
  '[]'::jsonb,
  '[{"id":"06711aa1-8304-4ba3-9233-3c5b2f689f11","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.012Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'R Concept',
  'wedding_planners',
  'por_contactar',
  NULL,
  NULL,
  '[{"label":"Rita Abecasis","number":"914696165"},{"label":"Margarida Espiñeira","number":"916284347"}]'::jsonb,
  '{"https://casamentos.rconcept.pt/index.html"}'::text[],
  NULL,
  'a_confirmar',
  'Rita Abecasis +351 914 696 165  
Margarida Espiñeira 351 916 284 347',
  '[]'::jsonb,
  '[{"id":"cd8038eb-ea2a-4d92-8328-53f63e2bca1d","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Ana Coelho Duarte',
  'wedding_planners',
  'por_contactar',
  NULL,
  'hello@anacoelhoduarte.com',
  '[{"label":null,"number":"961119778"}]'::jsonb,
  '{"https://www.anacoelhoduarte.com/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"c7bec0ba-57d6-4715-b918-4f67a746712e","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Festa das Marias',
  'wedding_planners',
  'por_contactar',
  NULL,
  'geral@festadasmarias.com',
  '[{"label":null,"number":"968696186"}]'::jsonb,
  '{"https://www.facebook.com/FestadasMarias/?ref=_xav_ig_profile_page_web#"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"b1cf3aa0-123b-44d3-bfd9-b0ec17bc0c27","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Nautilus - Party Planner - Algarve',
  'wedding_planners',
  'tentativa_contacto',
  NULL,
  'events@nautilusplanning.com',
  '[{"label":null,"number":"963183476"}]'::jsonb,
  '{"https://www.facebook.com/nautilus.event.planner/"}'::text[],
  'Algarve, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"84911cdc-5ac3-4058-8083-34387e3fcfea","date":"2026-01-18T20:05:06.000Z","channel":"telefone","summary":"28-07-25 - foi para voice mail Mais tarde recebi uma mensagem em INGLÊS a perguntar como poderiam ajudar? Voltei a ligar sem sucesso - Inglês. Será para um de vocês","by":"info+mj@floresabeirario.pt"},{"id":"c2ca82c5-664e-4298-a208-83137a7a19d7","date":"2026-03-10T11:38:07.000Z","channel":"whatsapp","summary":"Falei com o Paul. Diz não aceitar comissões. Pediu para mandar informação para o Whatsapp.","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"fa481e8f-a692-49f8-8fb2-0852d6d6fbb7","title":"Enviar WhatsApp","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Weddings by The Ateam',
  'wedding_planners',
  'por_contactar',
  NULL,
  'weddingplanneralgarve@gmail.com',
  '[{"label":null,"number":"916385544"},{"label":null,"number":"916319500"}]'::jsonb,
  '{"https://www.weddingplanneralgarve.com/"}'::text[],
  NULL,
  'a_confirmar',
  'atl.tele:  916 319 500',
  '[{"id":"bc3fb5d7-beb6-40e9-aa70-e81bb833025c","date":"2026-01-18T20:04:59.000Z","channel":"telefone","summary":"06-08-25 Só fala inglês. Nem me apresentei.... Ligar em INGLÊS","by":"info+mj@floresabeirario.pt"},{"id":"1db79da4-6e35-4a6a-831f-5bebae59b10f","date":"2026-03-10T11:28:07.000Z","channel":"telefone","summary":"Liguei e não atenderam (António)","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"542d43c4-e691-4119-a208-3a495a54b7b2","title":"Ligar em Inglês","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'NOMAD eventos',
  'wedding_planners',
  'por_contactar',
  NULL,
  'nomadeventosdecor@gmail.com',
  '[{"label":"Inês S. Freitas","number":"912293134"},{"label":"Inês Costa F","number":"969696683"}]'::jsonb,
  '{"https://www.nomadeventos.com/en"}'::text[],
  NULL,
  'a_confirmar',
  'Inês S. Freitas +351 912 293 134  
Inês Costa F. +351 969 696 683',
  '[]'::jsonb,
  '[{"id":"e121f22d-48c1-4688-bf04-b2908b662a49","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Fuse | Wedding & Event Planner',
  'wedding_planners',
  'por_contactar',
  NULL,
  'info@fmgroup.pt',
  '[{"label":null,"number":"910305058"}]'::jsonb,
  '{"https://www.instagram.com/fuse_wedding/"}'::text[],
  'Paços de Ferreira, Portugal',
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"d91bc8e6-9b73-4594-9c22-7aed5f34e589","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Lighthouse events',
  'wedding_planners',
  'por_contactar',
  NULL,
  NULL,
  '[{"label":null,"number":"924730230"}]'::jsonb,
  '{"https://lighthouseeventsmanagement.com/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[{"id":"8963e99c-da8e-480c-98db-7f69122ec344","date":"2026-01-18T20:05:25.000Z","channel":"outro","summary":"10-10-25 - segiu para voicemail em inglês","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"93b1971f-8835-4d63-8ec8-58dfcd23ae40","title":"Ligar em Inglês","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'S. White Organização e Decoração',
  'wedding_planners',
  'por_contactar',
  NULL,
  NULL,
  '[]'::jsonb,
  '{"https://www.instagram.com/swhiteorgdec/"}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  'Só tem contacto por facebook e instagram',
  '[]'::jsonb,
  '[{"id":"1fd11a06-dacd-4bb3-8b4f-ff8d1e552d65","title":"Contactar por redes sociais","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Catarina Rodrigues',
  'wedding_planners',
  'por_contactar',
  NULL,
  NULL,
  '[]'::jsonb,
  '{"https://www.instagram.com/wedding.planner.catarina/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"1f448de4-287a-4cd0-b350-181fdcaefd35","title":"Contactar por redes sociais","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Ana Alexandre',
  'wedding_planners',
  'por_contactar',
  NULL,
  NULL,
  '[{"label":null,"number":"910523968"}]'::jsonb,
  '{"https://www.instagram.com/anaalexandre_weddingplanner/"}'::text[],
  NULL,
  'a_confirmar',
  'Perguntar email',
  '[]'::jsonb,
  '[{"id":"4716c9d7-765a-4252-9391-dd44c570a4d8","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Face2face',
  'wedding_planners',
  'por_contactar',
  NULL,
  'info@face2face.pt',
  '[{"label":null,"number":"916427509"}]'::jsonb,
  '{"https://www.instagram.com/face2face.pt/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"ec80c792-4cb7-4b99-a204-4974c3caafbf","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Choice Events',
  'wedding_planners',
  'por_contactar',
  NULL,
  NULL,
  '[]'::jsonb,
  '{"https://www.instagram.com/eventschoice/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"f9c096c1-6e3e-491e-8fbc-acc4afac2263","title":"Contactar por redes sociais","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Do Pedido ao Altar',
  'wedding_planners',
  'tentativa_contacto',
  NULL,
  'info@dopedidoaoaltar.com',
  '[{"label":null,"number":"965569238"}]'::jsonb,
  '{"https://dopedidoaoaltar.com/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[{"id":"5898e155-e05d-4953-b921-48840c30ac9b","date":"2026-01-18T20:02:57.000Z","channel":"outro","summary":"19-09-2025 - desligaram","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"57482eec-9994-49ac-b9d3-9b28a44f4ec5","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'BOUQUET DE LIZ',
  'wedding_planners',
  'tentativa_contacto',
  NULL,
  'bouquetdeliz@gmail.com',
  '[{"label":null,"number":"919322589"}]'::jsonb,
  '{"https://www.facebook.com/bouquetdeliz"}'::text[],
  'Mira, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"0989c549-bcf1-485a-a1ec-328a6db581b9","date":"2026-01-18T20:03:03.000Z","channel":"outro","summary":"19-09-25 foi para voice mail","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"7afbd052-3c3b-4442-9518-690ed09a7d6e","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'We do',
  'wedding_planners',
  'tentativa_contacto',
  NULL,
  'your.i.do.deserves.we.do@gmail.com',
  '[{"label":null,"number":"916262379"}]'::jsonb,
  '{"https://we-do-wedd.my.canva.site/we-do-wedding?fbclid=PAZXh0bgNhZW0CMTEAAaekI91lQxvywREHRRsjP5vtHFbinDoYb7UQ5UirnS7hJFuO4h4kK4h35IBOGA_aem_uvjQ3sfTcJDicE70DZdgZA#page-2"}'::text[],
  NULL,
  'a_confirmar',
  'Site é do canva  NÃO pro ahah. Parecem que estão no início, acho que seriam uma boa parceria

têm Decoração floral como um dos serviços para além de wedding planning',
  '[{"id":"ac6924da-9e3a-4c6b-841a-4e6bb4a3732f","date":"2026-01-18T20:02:25.000Z","channel":"outro","summary":"10-10-25 nº indisponível","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"d806e10b-871d-4a02-ac24-83a618772d55","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Glow Eventos',
  'wedding_planners',
  'tentativa_contacto',
  NULL,
  'Geral@glow-eventos.com',
  '[{"label":null,"number":"916502595"}]'::jsonb,
  '{}'::text[],
  NULL,
  'a_confirmar',
  'faz tambem as flores dos casamentos',
  '[{"id":"0156c936-d839-4c6b-8616-5eb32651c885","date":"2026-01-18T20:02:08.000Z","channel":"telefone","summary":"14-01-26 - não atendeu","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"07d3f221-459c-4745-80a5-92931b97f48f","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'DESTINATION WEDDINGS IN PORTUGAL',
  'wedding_planners',
  'tentativa_contacto',
  NULL,
  'info@destinationweddingsinportugal.com',
  '[{"label":null,"number":"966030021"}]'::jsonb,
  '{"https://destinationweddingsinportugal.com/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[{"id":"37323f60-2e15-4657-b045-52b1d439f964","date":"2026-01-18T20:03:10.000Z","channel":"outro","summary":"06-08-25 número sem acesso","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"a15b458b-f622-4fb4-a678-16c5498cc59c","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'DOMA Portugal Weddings',
  'wedding_planners',
  'tentativa_contacto',
  NULL,
  'hello@domaweddings.com',
  '[{"label":null,"number":"930552113"}]'::jsonb,
  '{"https://www.domaweddings.com/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[{"id":"514a3f8e-9f7d-4593-924b-1ea750eb5dc2","date":"2026-01-18T20:02:40.000Z","channel":"outro","summary":"10-10-25 foi para voice mail","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"064a8e34-4fb9-420c-88ff-a25308035886","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'About Events',
  'wedding_planners',
  'tentativa_contacto',
  NULL,
  'info@aboutevents.com.pt',
  '[{"label":null,"number":"914028433"}]'::jsonb,
  '{"https://aboutevents.com.pt/contact/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[{"id":"e96a6da9-9a55-4f28-975f-80a7277b588b","date":"2026-01-18T20:02:34.000Z","channel":"outro","summary":"10-10-25 - contacto desligou imediatamente sem estabelecer ligação...","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"6559a527-7cb7-4a35-b5e2-cfbeb6ba92d7","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Casamentos Maria',
  'wedding_planners',
  'tentativa_contacto',
  NULL,
  'geral.casamentosmaria@gmail.com',
  '[{"label":null,"number":"969467879"}]'::jsonb,
  '{"https://www.facebook.com/profile.php?id=61574119244013"}'::text[],
  NULL,
  'a_confirmar',
  'é só uma pessoa, pelo que percebi',
  '[{"id":"92067f87-d6df-4091-aa95-51b88e8bdbf7","date":"2026-01-18T20:02:17.000Z","channel":"telefone","summary":"14-01-26 - Não atendeu","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"07f4c4a8-217d-436c-847c-708b48e34be6","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'As Fontes',
  'wedding_planners',
  'tentativa_contacto',
  'Pedro Alves',
  'asfontesalte@gmail.com',
  '[{"label":null,"number":"914188627"}]'::jsonb,
  '{"https://www.instagram.com/asfontesevents/"}'::text[],
  'Alte, Portugal',
  'a_confirmar',
  'Espaço para eventos de gestão familiar junto a uma nascente natural, no interior do Algarve.',
  '[{"id":"36814bda-636d-467e-95de-4f7100b21d8b","date":"2026-03-10T10:38:58.000Z","channel":"telefone","summary":"Liguei às 10h37 e desligou logo (António)","by":"info+mj@floresabeirario.pt"},{"id":"1460a713-2791-41bb-ae3a-47fe15d60967","date":"2026-03-10T10:59:56.000Z","channel":"telefone","summary":"Devolveu a chamada. Disse que não trabalhava de forma direta com os noivos, mas pediu para mandar um mail com a nossa informação para expor com quem trabalha.","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"b6543cb1-8d05-4603-8c81-e59662143dea","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'WHITE EVENTS',
  'wedding_planners',
  'tentativa_contacto',
  NULL,
  'geral@whitevents.pt',
  '[]'::jsonb,
  '{"https://whitevents.pt/"}'::text[],
  NULL,
  'a_confirmar',
  'Alentejo, Algarve & Central Portugal',
  '[{"id":"4cff916c-70fb-40aa-b264-4f4b4055a599","date":"2026-03-10T11:20:15.000Z","channel":"outro","summary":"Tratado por António","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"1033f587-2312-453a-93d4-76011fc8a8d9","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Escape Eventos',
  'wedding_planners',
  'pendente',
  NULL,
  'info@escape-eventos.com',
  '[]'::jsonb,
  '{"https://www.escape-eventos.com/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[{"id":"e5e5f618-9d8e-4bf9-b007-30f3fcd3610c","date":"2026-01-19T10:52:40.000Z","channel":"email","summary":"email enviado a pedir numero de telemovel","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"247b9459-6497-47e2-983c-57f34d7dd059","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Festa Aluga',
  'wedding_planners',
  'pendente',
  'Cristina',
  'geral@festaluga.pt cristinam@festaluga.pt',
  '[{"label":null,"number":"213970669"}]'::jsonb,
  '{"https://festaluga.pt/"}'::text[],
  'Lisboa, Portugal',
  'sim',
  'Têm muitos casamentos, têm 4 quintas, fazem a decoração, musica, estruturas, design, animação.  no site dizem que têm equipa de wedding planners',
  '[{"id":"308cf373-eb9f-4fe5-9da0-52a1504e3a5d","date":"2026-01-18T20:03:39.000Z","channel":"outro","summary":"03-10-25 falei com a Rita que embora não seja a pessoa que trata das flores, disse não ter conhecimento sobre a vontade das noivas em preservarem o bouquet. Disse ainda que são as floristas com quem trabalham que lhes fazem os bouquets... Todavia pediu para enviar a informação para a colega de la Cristina e deu o mail. Por sua vez ela vai nos dar o feedbacxk","by":"info+mj@floresabeirario.pt"},{"id":"c910d58d-ddd6-4d9f-a478-9f832035dce9","date":"2026-01-18T20:03:54.000Z","channel":"email","summary":"04-10-2025 email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"6c1a3d3b-bc91-4fed-a068-5df63a7f5349","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.013Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Dream Weddings Europe',
  'wedding_planners',
  'pendente',
  NULL,
  'info@dweddings.eu',
  '[{"label":null,"number":"965682008"}]'::jsonb,
  '{"https://www.dreamweddingseurope.com/"}'::text[],
  'Lisboa, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"b2433730-208e-40c5-bf39-c464c50a1baa","date":"2026-01-18T20:04:26.000Z","channel":"telefone","summary":"14-01-26 atendeu uma senhora em português que não perguntei o nome porque a seguir disse que só falava em inglês. Percebi tudo o que disse .) Pediu para mandar a informação apenas em inglês para o mail e caso tenham interesse , contactam-nos! Não falei em comissão","by":"info+mj@floresabeirario.pt"},{"id":"110f4ad2-ae6a-436b-877e-4690282e28a5","date":"2026-01-18T20:04:34.000Z","channel":"email","summary":"15-01-2026 - email em inglês enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"1e106d65-55dc-4d8c-a88e-48b1506fbabe","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Muza Weddings',
  'wedding_planners',
  'pendente',
  NULL,
  'Hello@muzaweddings.com',
  '[]'::jsonb,
  '{"https://www.muzaweddings.com/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[{"id":"b219b070-3a69-4478-9d42-929f00114db1","date":"2026-01-19T10:55:38.000Z","channel":"email","summary":"email enviado a pedir numero de telemovel","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"8273f4c5-ed5e-409f-91d1-920ed56e8523","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Fernanda Events',
  'wedding_planners',
  'pendente',
  'Fernanda',
  'hello@fernanda.events',
  '[]'::jsonb,
  '{"https://www.fernanda.events/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[{"id":"7f607075-9d5b-4ab9-a557-823f0055bdcd","date":"2026-01-19T10:58:54.000Z","channel":"email","summary":"email enviado a pedir numero de telemovel","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"194deea8-9a14-45ce-910f-4c02765e44aa","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Com alma',
  'wedding_planners',
  'pendente',
  NULL,
  'comalmaevents@gmail.com',
  '[]'::jsonb,
  '{"https://www.instagram.com/comalmaweddings/"}'::text[],
  NULL,
  'a_confirmar',
  'Lisboa e Vale do Tejo',
  '[{"id":"7b1d3683-8166-407d-b58e-5d45b7df1d7b","date":"2026-01-19T11:50:47.000Z","channel":"email","summary":"email a pedir numero enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"7502a643-3558-461d-b277-8212b8ed7ba7","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'a.bran.dar - eventos',
  'wedding_planners',
  'pendente',
  'Diana',
  'abrandar.eventos@gmail.com',
  '[]'::jsonb,
  '{"https://www.instagram.com/diana.livingslow/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[{"id":"0b0e7b3d-3c33-409f-8cd3-8a0d0081511e","date":"2026-01-19T11:15:28.000Z","channel":"email","summary":"enviei o seguinte email:\n\n\nBom dia Diana,\n\nO meu nome é Ana Baião e faço parte da Flores à Beira-Rio, um atelier em Coimbra dedicado a preservar a beleza natural das flores. Transformamos bouquets de casamento e outros arranjos em quadros que guardam memórias e duram para sempre.\n\nSentimos que o nosso trabalho conversa naturalmente com a vossa filosofia de slow living:\n\n* Preservamos as flores através de técnicas de prensagem, sem recorrer a resina, que pode ser tóxica e com grande custo para o ambiente, a prensagem mantém a beleza natural das flores de forma 100% segura e sustentável.\n* Escolhemos materiais e fornecedores locais, sempre que possível, para apoiar a economia da região e reduzir o impacto ambiental.\n* Cada quadro é feito com cuidado, tempo e atenção, transformando momentos especiais em peças únicas com valor emocional.\nAcreditamos que esta parceria pode enriquecer a experiência dos vossos noivos, oferecendo-lhes algo que respeita a natureza, o tempo e as memórias, sem qualquer esforço extra da vossa parte.\n\nSe fizer sentido, podemos conversar por telefone? Qual seria o melhor número e horário para vos ligar?\n\nAgradecemos desde já a atenção e ficamos a aguardar o vosso contacto.\n\nCom os melhores cumprimentos,\n\nAna Baião","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"67a75dbf-cb4b-4961-a601-eb62b1548eca","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Soulmates',
  'wedding_planners',
  'pendente',
  'Cristiana e Miguel (são um casal)',
  'hello@weddingsbysoulmates.com',
  '[]'::jsonb,
  '{"https://weddingsbysoulmates.com/"}'::text[],
  NULL,
  'a_confirmar',
  'Dizem que trabalham de Lisboa ao Algarve',
  '[{"id":"20102d90-d642-41ee-b423-4ef6fa10b0d5","date":"2026-01-19T11:38:50.000Z","channel":"email","summary":"email a pedir numero enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"ae87dfe1-3b73-406e-8df6-1060d3117e75","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Sofia Nascimento Studios',
  'wedding_planners',
  'pendente',
  NULL,
  'hello@sofianascimentostudios.com',
  '[{"label":null,"number":"926086097"}]'::jsonb,
  '{"https://sofianascimentostudios.com/"}'::text[],
  'Lisboa, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"5e9a4758-d1e7-4c5b-9f83-3375a82f1910","date":"2026-01-18T20:01:28.000Z","channel":"telefone","summary":"10-10-25 falei com uma Sara. Disse que o ano passado teve apenas 1 noiva que perguntou pela preservação... A chamada caíu. Voltei a ligar e estava desligado...","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"aa79d377-d96e-414a-b85a-28d95ba2e92c","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Dream It Eventz',
  'wedding_planners',
  'pendente',
  'Eloísa',
  'info@dreamiteventz.eu',
  '[{"label":null,"number":"914734272"}]'::jsonb,
  '{"https://www.facebook.com/dreamiteventz/"}'::text[],
  NULL,
  'a_confirmar',
  'Parecem muito amadores pelas redes sociais',
  '[{"id":"933c1621-6fe9-405f-8302-a7a8a4ba0774","date":"2026-01-18T20:01:16.000Z","channel":"telefone","summary":"04-08-25 falei com a Eloísa Pediu-me para ligar amanhã mais cedo porque estava com a filha...","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"afff0c83-5502-4793-944d-aa4cff6dfc0a","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'CRACHÁ - European Events Planning & Design',
  'wedding_planners',
  'pendente',
  'Isabel Passos',
  'ipassos@thecracha.com  geral@thecracha.com',
  '[{"label":null,"number":"936766161"}]'::jsonb,
  '{"https://thecracha.com/contactform"}'::text[],
  'Porto, Portugal',
  'sim',
  NULL,
  '[{"id":"3f4a0fb8-c316-4d9b-8de9-b5dff85d0cd0","date":"2026-01-18T20:04:07.000Z","channel":"outro","summary":"10-10-25 falei com a Isabel que me despachou dizendo que estava a preparar um evento e que não era o momento oportuno para pedir informações.... Quando me apresentei como parceira e não como cliente, deu-me mais alguns minutos e pediu para lhe enviarmos a informação para o mail. Pedi-lhe feedback","by":"info+mj@floresabeirario.pt"},{"id":"5981a5cf-14a0-47f2-b13d-5fa756b31a29","date":"2026-01-18T20:04:14.000Z","channel":"email","summary":"10-10-2025 email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"fd7bdfff-a8a8-43ff-9e78-baffd4635b9d","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Hello Portugal Concepts',
  'wedding_planners',
  'pendente',
  'Marleen',
  'info@helloportugalconcepts.com',
  '[]'::jsonb,
  '{"https://www.instagram.com/helloportugalevents/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[{"id":"13c58c8e-f1bd-4fef-ba83-833b3a84d8fc","date":"2026-01-19T11:21:15.000Z","channel":"email","summary":"email a pedir numero enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"39015491-84a4-4c17-8275-9a6c1f57ba4b","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Lowe Luxury Events',
  'wedding_planners',
  'pendente',
  'Telma Gomes',
  'info@lowe.pt 
eventos@lowe.pt',
  '[{"label":null,"number":"222081723"}]'::jsonb,
  '{"https://www.lowe.pt/en/"}'::text[],
  'Porto, Portugal',
  'sim',
  NULL,
  '[{"id":"8eeb3c4d-e199-4fe2-b0b7-fadb74a4f68c","date":"2026-01-20T22:10:42.000Z","channel":"outro","summary":"19-09-2025 - empresa tem muitas areas de negocio, recomendou falar com a colega telma gomes, pois é pessoa responsável por a area d eventos","by":"info+mj@floresabeirario.pt"},{"id":"2c10d5d2-3104-4404-90d4-606203f9fb32","date":"2026-01-20T22:11:01.000Z","channel":"reuniao","summary":"Falei com a Telma que não é a CEO mas é quem trata dos eventos. Disse que semanalmente tem uma reunião com toda a equipa. Organizam vários tipos de eventos e não só casamentos. Disse que nunca tiveram por parte dos noivos nenhum pedido para preservar o ramo, mas ficou interessada e disse que pode ser uma mais valia. Pediu o email e apresentações. Trabalham com portugueses e estrangeiros. Disse que só têm eventos para o verão. Disse que a parceria só ficará ativa após nos darem feedback nesse sentido. Enviar mail para o eventos...","by":"info+mj@floresabeirario.pt"},{"id":"384251e9-572a-41f7-95be-cd21aa74b36a","date":"2026-01-20T22:36:17.000Z","channel":"email","summary":"email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"4e853729-59d7-4438-9927-d5e637521154","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Take A Vow Portugal',
  'wedding_planners',
  'pendente',
  NULL,
  'hello@takeavowportugal.com',
  '[]'::jsonb,
  '{"https://www.takeavowportugal.com/"}'::text[],
  'Lisboa, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"226f1ad5-7b0c-4752-bcf1-8ae0d354494e","date":"2026-01-19T11:42:01.000Z","channel":"email","summary":"email enviado a pedir numero","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"32c18907-b284-4e03-be34-ed913c4f7f8a","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Casamento nas nuvens',
  'wedding_planners',
  'aceite',
  'Samira',
  'nasnuvenseventos@gamail.com',
  '[{"label":null,"number":"937734350"}]'::jsonb,
  '{"https://www.instagram.com/casamentonasnuvens/?fbclid=IwY2xjawL0P29leHRuA2FlbQIxMABicmlkETFMc01kSW9WVm1QOFR2ZUxVAR6LBA3zU_m1UqKd6YPOXzSMSOMgW7HvfS3oWJniCG7JY3oXNgRn-CkVHuhvAA_aem_Na4xB90PNSqSh6V1iSRNwg"}'::text[],
  'Leiria, Portugal',
  'nao',
  NULL,
  '[{"id":"3b342fc9-d82a-442b-9618-b55698fe8099","date":"2026-01-18T19:29:46.000Z","channel":"email","summary":"10-10-25 falei com a Samira que é brasileira. Os casamentos que organiza são em todo o país. Os noivos são 90% 1 brasileiro e outro de outra nacionalidade. NÃO QUIS os 10%.. Disse que se gostar do nosso trabalho não tem motivos para não o recomendar... Tem sempre o cuidado de perguntar aos noivos se querem 2 bouquets para atirarem um e preservar o outro. Pediu as apresentações e a informação por mail mas sem os 10% da parceria....","by":"info+mj@floresabeirario.pt"},{"id":"ec9e6844-b301-423f-91b2-779685f33243","date":"2026-01-18T19:29:55.000Z","channel":"email","summary":"10-10-2025 - email enviado, whatapp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"ae25a6c0-9d6e-499a-b5c1-d2d3ffdb45df","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Sonhos Reais',
  'wedding_planners',
  'aceite',
  'Marisa Conde',
  'sonhosreais.ea@gmail.com',
  '[{"label":null,"number":"916043585"}]'::jsonb,
  '{"https://www.facebook.com/sonhosreais.ea/?locale=pt_BR"}'::text[],
  'Coimbra, Portugal',
  'sim',
  'está constantemente a ter casamentos, publica tipo 3 por semana',
  '[{"id":"240b98ed-75a0-4a8e-a18a-17f69c172540","date":"2026-01-18T19:22:10.000Z","channel":"outro","summary":"12-09-25 informou que já teve noivas a perguntar pela preservação. Faz os arranjos todos, ou seja bouquet e decoração da igreja e quintas. Diz que não tem tempo, principalmente até o final da época de casamentos que é em novembro. Trabalha com noivos estrangeiros mas principalmente são portugueses. Disse que ia nos propor aos noivos mas que por falta de tempo não teria mais conversas com eles. É isso que faz com todos os parceiros e os noivos caso queiram entram em contacto connosco.","by":"info+mj@floresabeirario.pt"},{"id":"6c5a409b-6d99-4a6a-aea2-8e0aab6849c7","date":"2026-01-18T19:22:28.000Z","channel":"email","summary":"13-09-2025 - email e whatapp enviado","by":"info+mj@floresabeirario.pt"},{"id":"d48ed4e0-0330-4e36-8cff-d5e88d7f68e8","date":"2026-01-18T19:22:55.000Z","channel":"whatsapp","summary":"16-01-26 falei com a Marisa que se recordava ter falado comigo mas não se lembra de todo ter recebido o mail e o whatsapp pelo que pediu novamente. Disse já ter a agenda muito cheia que vai falar também com o irmão que é sócio e que na próxima 2f já nos responde.","by":"info+mj@floresabeirario.pt"},{"id":"8e4a822a-c9ea-430c-8164-c27c7ee477c3","date":"2026-01-18T19:23:05.000Z","channel":"email","summary":"17-01-2026 - email e whatsapp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"11a9ff47-b143-49f6-acbf-4116f9505052","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Masters Wedding Planner e Eventos',
  'wedding_planners',
  'aceite',
  'Lorena',
  'lorenasalesmartins@gmail.com',
  '[{"label":null,"number":"932209192"}]'::jsonb,
  '{"https://www.facebook.com/masterweddingplannerportugal/"}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"7b8e490e-13d2-4da4-8f76-f16341a41606","date":"2026-01-18T19:23:54.000Z","channel":"outro","summary":"11-09-25 - falei com a lorena. Disse que a enpresa também é recente e que ainda não têm uma grande procura mas até ao final do mês têm a coordenação (apenas do dia) de 2 casamentos: um em Lisboa, outro em Coimbra. Propus para sugerir aos noivos a preservação. Disse que o ano passado, teve uma noiva que mostrou interesse .... Ficou encantada com a ideia e pediu a informação e apresentação. Disse que iria seguir-nos nas redes sociais e disse-lhe que uríamos fazer o mesmo","by":"info+mj@floresabeirario.pt"},{"id":"a96e20b6-6788-49c4-bd86-589036d7abc6","date":"2026-01-18T19:24:03.000Z","channel":"whatsapp","summary":"11/09/2025 - Mensagem whatsapp e email enviados","by":"info+mj@floresabeirario.pt"},{"id":"33068394-82f5-4d2d-a404-c460251df786","date":"2026-01-18T19:24:18.000Z","channel":"outro","summary":"16-01-26 - a lorena disse que está a ser um ano difícil porque tem duas crianças e não estavam bem de saúde. O ano passado tiveram apenas 5 casamentos: 4 brasileiros e 1 português. Este ano ainda não têm nenhum. Disse ter deixado de pagar o casamento .pt Guardaram a nossa informação na \"planilha\" e que se precisar entra em contacto. Despediu-se de mim por obrigada princesa! :)","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"23b6611d-2294-4d0c-9800-fb11f72c4df1","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Joana Bernardo Events',
  'wedding_planners',
  'aceite',
  NULL,
  'info@joanabernardoevents.com',
  '[{"label":null,"number":"964119361"}]'::jsonb,
  '{"https://joanabernardoevents.com/"}'::text[],
  'Lisboa, Portugal',
  'sim',
  'fazem tambem arte floral para os eventos. tme muitas areas de atuação.',
  '[{"id":"9bd75ab5-d0ec-4740-90a1-1c1a366b1183","date":"2026-01-18T19:30:29.000Z","channel":"outro","summary":"10-10-25- falei com a joana que disse não ter capacidade para organizar casamentos com mais de 100 pessoas. Normalmente são casamentos pequenos e de pessoas jovens. Gostou do nosso conceito. mas acha que os noivos dela, qualquer valor a mais, acham muito... disse também que há noivas que querem bouquets com flores secas e frescas para depois guardarem as secas... Enfim... de qualquer maneira pediu para enviarmos as apresentações","by":"info+mj@floresabeirario.pt"},{"id":"9f0fc967-6c97-4e59-840b-fa93050342cb","date":"2026-01-18T19:30:37.000Z","channel":"email","summary":"10-10-2025 email e whatapp enviados","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"21365ec5-87c9-4dee-a9bd-a98e04045aaa","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Rustic Wedding Planner',
  'wedding_planners',
  'aceite',
  'Luciana',
  'geral@rusticweddingplanner.pt',
  '[{"label":null,"number":"912933590"}]'::jsonb,
  '{"http://rusticweddingplanner.pt/#logo"}'::text[],
  'Guimarães, Portugal',
  'sim',
  NULL,
  '[{"id":"a5116a36-9094-466f-975e-6544a19b997d","date":"2026-01-18T19:27:21.000Z","channel":"whatsapp","summary":"14-01-26 - falei com a Luciana que disse não ter muitos noivos a perguntar pelo serviço mas que quando acontece tem reencaminhado para a Aurora que fica mais perto! Disse porém que se tiver noivos mais perto da zona centro que nos pode recomendar. Disse que queria as apresentações pelo Whatsapp e disse que mandava a restante informação da parceria para o mail","by":"info+mj@floresabeirario.pt"},{"id":"580f5253-5dbb-442d-9ab3-5e34acddd33b","date":"2026-01-18T19:27:27.000Z","channel":"email","summary":"16-01-2026 - email enviado e whatpp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"35ec45be-ff9c-40a1-a1f7-6a548b6f0b0a","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Maxidream',
  'wedding_planners',
  'aceite',
  'Sílvia',
  'eventos@maxidream.pt',
  '[{"label":null,"number":"918950811"},{"label":null,"number":"244209053"}]'::jsonb,
  '{"https://maxidream.pt/"}'::text[],
  'Marinha Grande, Portugal',
  'sim',
  'alt.tele: 244 209 053',
  '[{"id":"3fd3ffc7-2642-4db6-b68d-799e5790b8fb","date":"2026-01-20T22:05:15.000Z","channel":"email","summary":"flei com a Silvía que também comprou uma prensa para fazer secagem. Diz que o objetivo é usar flores prensadas para usar em bijuteria, nomeadamente brincos. Tem o ramo dela seco . Casou há 26 anos. trabalha com uma senhora que faz resina. Vai a feira de noivos inclusivé esteve na ultíma feira em Coimbra, afirmando que não foi nada de excepcional! Não gosta da Exponoivos porque é muito barulho, muita confusão e pouca proximidade.... O 1º casamento é no dia 01 de Maio. Costuma ter muitos casamentos em Coimbra.Também é celebrante. Ficou interessada na parceria e pediu a informação por mail","by":"info+mj@floresabeirario.pt"},{"id":"ef5fb5e0-9bf8-4ecf-8079-f6b10ee5df04","date":"2026-01-20T22:33:07.000Z","channel":"email","summary":"email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"f02677a9-7208-48c8-b0e0-fc7609abebaf","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Algarve Magic Weddings',
  'wedding_planners',
  'aceite',
  'Zita',
  'info@algarve-magic-weddings.com',
  '[{"label":null,"number":"939082027"}]'::jsonb,
  '{"https://www.facebook.com/algarvemagicweddings/"}'::text[],
  'Algarve, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"9469c5ea-5df1-4fe1-973e-98c8cbc1b634","date":"2026-01-18T19:36:40.000Z","channel":"outro","summary":"03-10-25. falei com a Zita que estava na praia. Disse que até hoje ainda não teve muitos noivos a perguntar pela preservação. A maioria são estrangeiros e perguntou se já tínhamos enviado algum bouquet para o estrangeiro... Disse que alguns casam e ficam durante 1 semana achando que poderiam levar o quadro... Quando falei na parceria ficou mais entusiasmada. Disse que ainda tem um casamento e que iria já propor a esses noivos. Enviar toda a informação","by":"info+mj@floresabeirario.pt"},{"id":"a59dcc8b-d9ab-436a-a168-1eb930635c58","date":"2026-01-18T19:36:50.000Z","channel":"email","summary":"03-10-2025 email enviado\n\n07-10-2025 whatapp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"dce914fe-b7d1-4afb-ae31-cf189d2acab7","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Dream Day Wedding Planners',
  'wedding_planners',
  'aceite',
  'Sara Pires

Mariana Alves',
  'info@dreamdayweddingplanners.com logistica@dreamdayweddingplanners.com',
  '[{"label":null,"number":"915202390"},{"label":null,"number":"289150145"}]'::jsonb,
  '{"https://dreamdayweddingplanners.com/contacts/"}'::text[],
  'Algarve, Portugal',
  'a_confirmar',
  'outro telefone: 289 150 145',
  '[{"id":"c4b5ba15-59ec-408f-973b-d7d5e03f1af6","date":"2026-01-18T19:35:29.000Z","channel":"email","summary":"03-10-25 - através do fixo falei com a Sara que disse serem uma equipa com várias planners e cada uma tem os seus noivos.Até final de outubro têm ainda pelo mesnos mais 15 casamentos. Afirmou terem vários noivos a perguntar pela preservação e que até hoje não tinham resposta. Pediu para enviar a informação por email para o info e também diretamente para a colega da logística:Mariana Alves. Enviar apenas a apresentação em inglês porque os noivos são todos estrangeiros ou portugueses que residem no estrangeiro.. O tlm é da Sara e depois enviará para as colegas. Disse que caso demorem a responder não é por falta de interesse mas por falta de tempo face ao excesso de trabalho!","by":"info+mj@floresabeirario.pt"},{"id":"fdb09b9b-db7f-4653-a065-d9dc0bf93ced","date":"2026-01-18T19:35:38.000Z","channel":"email","summary":"03-10-2025 - email enviado\n\n07.10-2025 - whatapp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"0f776f30-8007-4ee4-9fcb-dfe5b354939e","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'GreenHouse Events',
  'wedding_planners',
  'aceite',
  'Diana',
  'greenhevents@gmail.com',
  '[{"label":null,"number":"918720347"}]'::jsonb,
  '{"https://www.facebook.com/greenhousevents2020/"}'::text[],
  'Aveiro, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"46847e1c-6818-4078-858e-f307923e0bb4","date":"2026-01-18T19:36:23.000Z","channel":"email","summary":"02-10-25 falei com a Diana. Já não têm casamentos este ano. Fez algumas perguntas nomeadamente quantos dias depois do casamento o bouquet deveria cxhegar à nossa mão, como fazíamos a recolha.... Também falou que muitas das noivas atiravam o seu próprio bouquet às solteiras e já estava a dizer que em vez de ficarem com o bouquet podiam oferecer-lhes o quadro.... Enviar email e whatsapp","by":"info+mj@floresabeirario.pt"},{"id":"018b1f24-19e8-4d60-ac8f-015988fe5de4","date":"2026-01-18T19:36:29.000Z","channel":"email","summary":"3/10/2025 email enviado\n\n07-10-2025 - whatapp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"812553a6-2d89-4964-845b-59b6380a5ca5","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'António Hierro',
  'wedding_planners',
  'aceite',
  'António Margarida e Michele',
  'events@antoniohierro.com',
  '[{"label":null,"number":"911070690"}]'::jsonb,
  '{"https://antoniohierro.com/pt/contact/"}'::text[],
  'Porto, Portugal',
  'sim',
  NULL,
  '[{"id":"cddfa46d-f2ff-43b8-96d6-228d29bb1fae","date":"2026-01-18T19:26:27.000Z","channel":"outro","summary":"14-01-26 - falei com o António. Disse trabalhar com noivos estrangeiros e portugueses. Neste ano já têm agendados 25 casamentos. O 1º é dia 11 de abril. Pediu toda a informação para o mail bem como as apresentações. Pedi para nos darem feedback após recepção da informação.","by":"info+mj@floresabeirario.pt"},{"id":"6a14cd97-f10b-4389-ab8b-d0b64b00acc2","date":"2026-01-18T19:26:34.000Z","channel":"email","summary":"15-01-2026 - email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"ea12cfd0-a572-4186-a677-8f3529e8b532","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'The wedding planner and curator',
  'wedding_planners',
  'aceite',
  'Catarina',
  'catarinaO@WEDDINGPLANNERANDCURATOR.com HELLO@WEDDINGPLANNERANDCURATOR.com',
  '[{"label":null,"number":"912121217"}]'::jsonb,
  '{"https://weddingplannerandcurator.com/?fbclid=PAZXh0bgNhZW0CMTEAAaeWNtnRIPSg5ZHndJKqigtHFihYj0HGNcB6CudqxVmZPr52n4dyWtAh8dBXwg_aem_QR16weQ4GqR1bA25WByoFQ"}'::text[],
  'Lisboa, Portugal',
  'sim',
  NULL,
  '[{"id":"307d0bc3-16c3-4e15-b41a-f94d5e9b60cd","date":"2026-01-18T19:30:08.000Z","channel":"whatsapp","summary":"10-10-25 falei com a Catarina que ficou visivelmente interessada. Disse que tinha uns noivos em novembro que poderão ficar interessados... Pediu as apresentações pelo whatsapp e o mail diretamente para ela.","by":"info+mj@floresabeirario.pt"},{"id":"d70f178c-db0c-4cd1-945f-f9ef4efe77b4","date":"2026-01-18T19:30:15.000Z","channel":"email","summary":"10-10-2025 email enviado, whatapp anviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"44faac91-ceca-486d-97ba-5d356ead62f3","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Romana Pereira Plant Based Weddings',
  'wedding_planners',
  'aceite',
  'Romana',
  'info@romanapereira.com',
  '[{"label":null,"number":"913619513"}]'::jsonb,
  '{}'::text[],
  'Ermesinde, Portugal',
  'sim',
  'é vegan e faz casamentos vegan',
  '[{"id":"11dae323-81c2-4ece-9077-1c11420ff13d","date":"2026-01-18T19:28:07.000Z","channel":"whatsapp","summary":"14-01-26 - Disse que já trabalhava com a Aurora mas que o ano passado ela tinha a agenda tão cheia que não conseguiu encaminhar noivos. Super simpática e no final já me tratava por \"tu\" . Disse que tinha muito interesse. Pediu as apresentaçõs por Whatsapp e mail com a restante informação.","by":"info+mj@floresabeirario.pt"},{"id":"1337158c-fde8-47e2-9585-ff1d1e0d9ebd","date":"2026-01-18T19:28:14.000Z","channel":"email","summary":"15-01-2026 email e whatapp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"58ea69ab-b041-4850-93c8-f8e6890bf6dd","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Casa de abis',
  'wedding_planners',
  'aceite',
  'Beatriz',
  'geral@casadeabis.com',
  '[{"label":null,"number":"913063313"}]'::jsonb,
  '{"https://casadeabis.com/pt/"}'::text[],
  'Aveiro, Portugal',
  'a_confirmar',
  'ver site',
  '[{"id":"9e612c8a-1e78-44e9-aad6-e47799359ed2","date":"2026-01-18T19:34:51.000Z","channel":"telefone","summary":"02-10-25 - atendeu a Beatriz. Ficou bastante satisfeita com o contacto porque tem várias noivas a questionar pela preservação. Estão na recta final sendo que, este m~Es ainda têm 3 casamentos. Ficou de enviar ainda a apresentação para a noiva que casa na próxima semana. Disse que tudo o que envia aos noivos em PDF por whatsapp. Enviar e-mail e apresentações","by":"info+mj@floresabeirario.pt"},{"id":"246a166f-74b3-4aa0-b045-ad42bfcd5f8f","date":"2026-01-18T19:34:59.000Z","channel":"email","summary":"03-10-2025 - Email enviado","by":"info+mj@floresabeirario.pt"},{"id":"723a8af9-b0ef-49a5-a50c-949f127c8867","date":"2026-01-18T19:35:06.000Z","channel":"whatsapp","summary":"07-10-2025 whatsapp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"9811b24f-fd82-4dc0-a4c6-8205e959670a","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'We Do...I Do´s',
  'wedding_planners',
  'aceite',
  'Pedro Campos',
  'info@wedoidosweddings.com',
  '[{"label":null,"number":"918156748"}]'::jsonb,
  '{"https://wedoidosweddings.com/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[{"id":"922e1be8-fe76-4bdb-b6b8-7cb75793292d","date":"2026-01-18T19:34:27.000Z","channel":"email","summary":"(sem dia)Este era um dos contactos que não tem Tlm disponiível mas que consegui o contacto do Pedro na net. Eles são da zona de Paços de Ferreira. Os noivos com que trabalha são noivos com boa situação financeira e disse logo que não se iriam importar de pagar pelos quadros. Não me quis dar o email. ATENÇÂO: Combinei com ele enviar as apresentações por whatsapp e na resposta ele ficou de nos dar o e-mail. Disse ainda ter casamentos até ao final do ano.","by":"info+mj@floresabeirario.pt"},{"id":"6afad072-ee08-45be-bf76-1a83f53e0d11","date":"2026-01-18T19:34:35.000Z","channel":"whatsapp","summary":"07,10,2025 - whatapp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"bf4b7818-4d3c-4e8c-8995-fce65457447e","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'M&B',
  'wedding_planners',
  'aceite',
  'Anabela',
  'info@mbweddingsevents.com',
  '[{"label":null,"number":"912727733"},{"label":null,"number":"911835704"}]'::jsonb,
  '{"https://www.mbweddingsevents.com/"}'::text[],
  'Algarve, Portugal',
  'a_confirmar',
  'outro telemovel:  911835704',
  '[{"id":"1402c776-8bf4-4443-a786-7c5b35b453c0","date":"2026-01-18T19:40:12.000Z","channel":"outro","summary":"19-09-2025 - trabalham com noivos pt mas principalmente estrangeiros, vai ter 4 até ao final do ano, dia 24 e dia 23 deste mes. falava pausadamente","by":"info+mj@floresabeirario.pt"},{"id":"79fd5389-42d9-40ff-bd33-723fa7dc0254","date":"2026-01-18T19:40:19.000Z","channel":"email","summary":"19-09-2025 - Email e whatapp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"474387ad-ed9e-4742-9955-664fcedb05cc","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Sónia Pedra eventos',
  'wedding_planners',
  'aceite',
  'Sónia',
  'info@soniapedra.pt',
  '[{"label":null,"number":"919640119"}]'::jsonb,
  '{"https://www.instagram.com/sonia_pedra_eventos/"}'::text[],
  'Leiria, Portugal',
  'a_confirmar',
  'recebi anúncio dela no instagram. Não mete número, partilha sempre só o whatsapp. perguntar email. faz batizados e todo o tipo de festas, muitas direcionadas para crianças',
  '[{"id":"aae86d7b-83fa-4aaf-ad7d-7a6495af96d8","date":"2026-01-18T19:41:10.000Z","channel":"whatsapp","summary":"12-09-25 -informou que este ano já não tem casamentos. Já teve quem lhe tivesse perguntado pela preservação do bouquet e até hoje, desconhecia quem o fizesse. Aceitou a parceria e pedi para nos seguir nas redes sociais . Enviar apresentação pelo whatsapp e a restante por email. Oferta de 10% de comissão","by":"info+mj@floresabeirario.pt"},{"id":"fa3b59db-432e-4fe1-b97e-a9266887316c","date":"2026-01-18T19:41:16.000Z","channel":"email","summary":"13-09-2025 - email e whatsapp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"00f9b5dc-6f5d-4b03-be1e-3e8e13f42ca7","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Algarve Weddings Sonho a Dois',
  'wedding_planners',
  'aceite',
  'Noélia Jacinto',
  'info@sonhoadois.com',
  '[{"label":null,"number":"910668928"}]'::jsonb,
  '{"https://www.facebook.com/AlgarveWeddingsSonhoaDois/"}'::text[],
  'Algarve, Portugal',
  'sim',
  NULL,
  '[{"id":"2334e057-d9eb-4ec0-bbb0-1c1280d3cec9","date":"2026-01-18T19:43:44.000Z","channel":"outro","summary":"28-07-25 Falei com a Noélia. Neste momento já têm os anos de 25 26 e parte de 27, fechados. Os noivos são 99% estrangeiros: irlandeses, ingleses, norte americanos e canadianos. Ficou super feliz com a nossa existência e que trmos um serviço que lhes fazia falta. Como é que eles trabalham? Primeiro os clientes reservam com eles e sódepois têm acesso a todos os parceiros que estão no site deles. Nós também vamos para o site deles.Nesse sentido pediu uma apresentação para o site em inglês (quem somos, o que fazemos, como e quais as técnicas de preservação das flores...)","by":"info+mj@floresabeirario.pt"},{"id":"5705b364-09cf-48f9-b01a-749677ffd9fd","date":"2026-01-18T19:44:12.000Z","channel":"email","summary":"29-07-2025 - Email e apresentação enviada","by":"info+mj@floresabeirario.pt"},{"id":"2c05ede4-87e9-4a2b-9ff8-6cef26b5d27e","date":"2026-01-18T19:44:28.000Z","channel":"outro","summary":"04-08-25 falei com a Noélia. Confirmou que receberam a informação. Ia começãr um evento e despachou-me mas senti que mantinha o interesse","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"ffed8314-cfa8-462a-8e3e-cd0d91a933c9","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'By Who Events',
  'wedding_planners',
  'aceite',
  'Matilde',
  'contact@bywhoevents.pt',
  '[{"label":null,"number":"917938152"}]'::jsonb,
  '{"https://www.facebook.com/bywho.events/"}'::text[],
  'Lisboa, Portugal',
  'sim',
  NULL,
  '[{"id":"021555fa-43e3-45db-862d-878160219f10","date":"2026-01-18T19:44:44.000Z","channel":"email","summary":"04-08-25 falei com a Matilde. Trabalha só com ingleses e norte americanos. Disse que as noivas nunca perguntaram pelo serviço de preservação do bouquet mas não se opôs a recomendar-nos. Pediu para enviar o email. pedi-lhe para responder ao mesmo","by":"info+mj@floresabeirario.pt"},{"id":"c76d7811-f7ea-4f20-b68f-297205afa036","date":"2026-01-18T19:44:50.000Z","channel":"email","summary":"05-08-25 Email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"4fd971cc-bbfe-40b8-a152-c22bf3670e3a","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Porto for weddings',
  'wedding_planners',
  'aceite',
  'Ana Holland?',
  'info@portoforweddings.com anaholland@portoforweddings.com',
  '[{"label":null,"number":"938276671"}]'::jsonb,
  '{"https://www.portoforweddings.com/"}'::text[],
  'Porto, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"46e9a651-0647-4cd2-b289-5666b97666be","date":"2026-01-18T19:39:57.000Z","channel":"outro","summary":"19-09-2025 - Falei com a Ana, nao teve muias noivas a perguntarem lhe pela preservacao e quis com resina. ficou interessada. este ano já está na reta final, por isso seria só para 2026","by":"info+mj@floresabeirario.pt"},{"id":"ecd8d21c-5fef-4acf-874f-2b82e627842f","date":"2026-01-18T19:40:02.000Z","channel":"email","summary":"19-09-2025 - email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"a8e872a6-5f79-44d9-b420-3a8026449772","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.014Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Como Branco',
  'wedding_planners',
  'aceite',
  'Marta Sousa',
  'hello@comobranco.com marta.sousa@comobranco.com',
  '[{"label":null,"number":"910565257"}]'::jsonb,
  '{"https://www.comobranco.com/"}'::text[],
  'Lisboa, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"f529e45b-af1f-4a8f-9835-949973470870","date":"2026-01-18T19:40:31.000Z","channel":"outro","summary":"19-09-2025 - só tem casamentos para o ano, teve uma noiva qu epediu preservação e que contraram uma pessoa do porto para fazer e já reservaram. voltar a falar mais tarde se houver alteracoes dos valores","by":"info+mj@floresabeirario.pt"},{"id":"498d4651-a14d-44fc-b184-f794e4f841b6","date":"2026-01-18T19:40:38.000Z","channel":"email","summary":"19-09-2025 - Email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"587e6b6b-0fd4-4b41-bd4a-8a96092b4cad","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.015Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'monica.magalhaes.weddings',
  'wedding_planners',
  'aceite',
  'Mónica',
  'info@amorprasempre.com',
  '[{"label":null,"number":"937720307"}]'::jsonb,
  '{"https://www.amorprasempre.com/"}'::text[],
  'Porto, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"57e36204-c854-4aa5-84a8-dad59593ce2f","date":"2026-01-18T19:42:26.000Z","channel":"whatsapp","summary":"12-09-25 - falei com a Mónica que é super simpática e começou-me a tratar por \"tu\". Já teve noivas que lhe pediram esse serviço, porém diz que são eles que muitas vezes sugerem aos noivos. Trabalham com noivos norte americanos e estes são os que perguntam mais... Tem casamentos até 21 de outubro. Falou que as outras pessoas com quem trabalhou com a preservação foram indicadas pela florista de VNG - Maria Papoila. Ficou super interessada com a parceria e enviar a informação para Whatsapp e email (Enquanto estava a falar disse-me que já estava a ver o site)","by":"info+mj@floresabeirario.pt"},{"id":"b1b09766-cbbf-4339-ba03-ae92dc0ae1dd","date":"2026-01-18T19:42:32.000Z","channel":"email","summary":"13-09-2025 - email enviado, whatsapp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"d79b427b-c964-487f-a365-f798246c8dab","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.015Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Arco Iris Eventos',
  'wedding_planners',
  'aceite',
  'Graciete',
  'geral@arco-iris-eventos.pt',
  '[{"label":null,"number":"962293708"},{"label":null,"number":"236094222"}]'::jsonb,
  '{"https://www.arco-iris-eventos.pt/servicos"}'::text[],
  'Pombal, Portugal',
  'a_confirmar',
  'fazem tambem flores

outro telefone:
236 094 222',
  '[{"id":"d7add063-efcc-4bac-912f-0a1fbef93611","date":"2026-01-18T19:37:16.000Z","channel":"email","summary":"24-09-25 - falei com a Graciete que afirmou ter casamentos até final deste ano. Trabalha essencialmente com noivos portugueses. Quando algim noivo lhe perguntava pelo serviço de preservação, sugeria o ramo já com flores preservadas. Enviar email e apresentação em português e inglês pelo whatsapp","by":"info+mj@floresabeirario.pt"},{"id":"007ff8de-b8c0-4a28-8e2a-bb510c0df791","date":"2026-01-18T19:37:24.000Z","channel":"email","summary":"25-09-2025 - Email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"4ccfac19-e406-467e-a93f-f7d14aca089a","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.015Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Favo de Mel - Event Planner',
  'wedding_planners',
  'aceite',
  'Lucia Covas',
  'favodemel.planner@gmail.com',
  '[{"label":null,"number":"917958998"}]'::jsonb,
  '{"https://www.facebook.com/favodemel.event.planner"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[{"id":"c83a58ac-5cd7-4ad8-802e-d7c2ee0e2165","date":"2026-01-18T19:40:50.000Z","channel":"outro","summary":"19-09-2025 - falei com a lucia super simpatica, tem poucos casamaentos, já tinha recomendado preservacao de flores numa pagina que encontrou no instagram. vai ter um casamento amanha, vai propor. sao dos paises baixos.","by":"info+mj@floresabeirario.pt"},{"id":"33d03538-90ba-41c7-9d5c-973bfe783854","date":"2026-01-18T19:40:56.000Z","channel":"email","summary":"19-09-2025 - email e whatapp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"f066502b-d927-4fc5-b97d-4cb3458e2e1e","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.015Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Paula Carvalho Wedding Planner',
  'wedding_planners',
  'aceite',
  NULL,
  'geral@paulacarvalhoeventos.pt',
  '[{"label":null,"number":"938379003"}]'::jsonb,
  '{"https://paulacarvalhoeventos.pt/contactos/"}'::text[],
  'Vila do Conde, Portugal',
  'sim',
  'Ela tem uma aba de "parceiros " no site',
  '[{"id":"79db3fd0-6222-4fc3-8e8e-3d2636d52bec","date":"2026-01-18T19:45:04.000Z","channel":"outro","summary":"04-08-25 - Diz que as noivas perguntam. perguntou ela logista. super simpatica. trabalha com casamentos de pt e estrangeiros. queria os contactos e ficou super interessada.","by":"info+mj@floresabeirario.pt"},{"id":"35e5744d-c4de-49e4-8477-4f7da5a302dd","date":"2026-01-18T19:45:13.000Z","channel":"email","summary":"05-08-25 - Email enviado, whatsapp enviado","by":"info+mj@floresabeirario.pt"},{"id":"296394bc-7809-4884-ae65-b6901255c526","date":"2026-01-18T19:45:20.000Z","channel":"telefone","summary":"12-09-25 - liguei para pds mas não atendeu!","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"7063c927-773d-4cf8-ba55-0c0ed4f6e69c","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.015Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Fashion Moments',
  'wedding_planners',
  'aceite',
  'Joana Frade',
  'geral@fashionmomentseventos.pt',
  '[{"label":null,"number":"916490175"}]'::jsonb,
  '{"https://fashionmomentseventos.pt/"}'::text[],
  'Cacém, Portugal',
  'sim',
  NULL,
  '[{"id":"05af20a4-541d-4f5a-a607-21807ba81276","date":"2026-01-18T19:42:56.000Z","channel":"outro","summary":"24-07-25 - Falei com a Joana que também desconhecia a preservação das flores. A maioria das noivas vêm apenas a Portugal casar e depois deixam cá o ramo. Ficou interessada na parceria.","by":"info+mj@floresabeirario.pt"},{"id":"816ebdb9-4bfc-4564-a99f-fa9705ef3684","date":"2026-01-18T19:43:05.000Z","channel":"email","summary":"24-07-25 - email enviado","by":"info+mj@floresabeirario.pt"},{"id":"595d91d8-8d2c-4c02-8ffd-939f75a62ef0","date":"2026-01-18T19:43:25.000Z","channel":"outro","summary":"04-08-25 - voltei a falar com a Joana que confirmou que recebeu a informação. Pedi-lhe que respondessem a confirmar a parceria","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"8750c6c2-09c2-4b80-b1d3-a01bc36da69b","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.015Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Tales WPT',
  'wedding_planners',
  'aceite',
  'Marta',
  'info@taleswpt.com',
  '[{"label":null,"number":"931327001"}]'::jsonb,
  '{"https://www.instagram.com/taleswpt?igsh=MTZtMmlmZ2dkb2hzNg%3D%3D"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[{"id":"3042e42f-c38b-4584-925e-da45cd72dcc4","date":"2026-01-18T19:41:44.000Z","channel":"telefone","summary":"06-08-25 - não atendeu","by":"info+mj@floresabeirario.pt"},{"id":"0af3dc0d-dd8a-4da4-8627-8c252d67c133","date":"2026-01-18T19:42:00.000Z","channel":"telefone","summary":"12-09-25 - devolveu a chamada. Só trabalham com noivos estrangeiros. Este ano ainda tem mais um casamento mas falou que de certeza que os noivos não iriam querer porque segundo ela, eles não querem nada!.... Enviar apresentação pelo whatsapp e restante por email","by":"info+mj@floresabeirario.pt"},{"id":"c6ea7722-ddfc-4c68-aa49-86af6d365bc8","date":"2026-01-18T19:42:07.000Z","channel":"email","summary":"13-09-2025 - email e whtapp enviados","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"45daceb5-c7cb-4730-aa2d-159064425ad5","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.015Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Save This Date - organização de eventos',
  'wedding_planners',
  'aceite',
  'Miguel',
  'miguelweddingplanner@gmail.com',
  '[{"label":null,"number":"913759777"}]'::jsonb,
  '{"https://www.facebook.com/profile.php?id=100077497851377"}'::text[],
  'Lisboa, Portugal',
  'sim',
  NULL,
  '[{"id":"89db1e2d-7fcc-4802-ae8c-1c46fa8ec782","date":"2026-01-18T19:30:59.000Z","channel":"telefone","summary":"02-10-25 - não atendeu. Depois de trocas de mensagens, devolveu dia 03 a chamada. Muito simpático, ao contrário do que esperava...Disse que conhecia uma pessoa que preservava os ramos mas que nem sempre tinha agenda livre e seria bom ficar com o nosso contacto e parceria... ATENÇÃO enviar apenas pelo whatsapp porque disse que na resposta diria qual o email... Este ano já não tem mais casamentos","by":"info+mj@floresabeirario.pt"},{"id":"301937f7-d2d1-4fb0-bd13-ddb1af3d5a23","date":"2026-01-18T19:31:08.000Z","channel":"whatsapp","summary":"07-10-2025 whatapp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"069e6da6-2f80-482a-a6a3-d98f51e5ab2a","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.015Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Casa da Praia',
  'wedding_planners',
  'aceite',
  'Rita',
  'casadapraia@gmail.com',
  '[{"label":null,"number":"966516691"},{"label":null,"number":"964311914"}]'::jsonb,
  '{"https://www.casadapraia.pt/contactos/"}'::text[],
  'Figueira da Foz, Portugal',
  'sim',
  'outro telemovel: 964 311 914',
  '[{"id":"dc7ad162-6a9e-4582-88ce-98b0706d386c","date":"2026-01-18T20:03:21.000Z","channel":"telefone","summary":"06-08-25 atendeu a responsável Rita. Disse que só trabalha com estrangeiros. São apenas organizadores do espaço e nunca nenhuma noiva questionou pela preservação Disse que não iria propôr aos noivoa mas se eles perguntarem, tem todo o gosto em dar o nosso contacto.","by":"info+mj@floresabeirario.pt"},{"id":"cfddc000-415f-4e31-98f5-a5fb2e9d7d60","date":"2026-01-18T20:03:29.000Z","channel":"email","summary":"07-08-2025 - Email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"55cdfc31-7732-43bd-8d2a-10df212e3d70","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.015Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Eventos Dona Maria',
  'wedding_planners',
  'aceite',
  'Filipe e Cátia',
  'info@eventosdonamaria.com',
  '[{"label":null,"number":"910538996"},{"label":null,"number":"239502424"}]'::jsonb,
  '{"https://eventosdonamaria.com/eventos/"}'::text[],
  'Soure, Portugal',
  'sim',
  'oraganizam e tambem ttêm uma quinta

outro telofone:
239 502 424',
  '[{"id":"5421213c-2e46-4ba8-b66d-78f60980f43e","date":"2026-01-18T19:28:26.000Z","channel":"telefone","summary":"15-10-25 - não atenderam Devolveram a chamada . Falei com o Filipe que disse estar mais ligado ao apoio corporativo e pediu para falar com a colega Cátia . O ultímo casamento vai ser no próximo sábado. Para além da Quinta do Mourão trabalham também com outras quintas.","by":"info+mj@floresabeirario.pt"},{"id":"0f2560a5-40d9-4a56-b5c2-a7f1a5d9e940","date":"2026-01-18T19:28:43.000Z","channel":"email","summary":"Dia 16 -10-25 falei com a Cátia que foi muito simpática. Não conhecia ninguém que preservasse as flores. Tem uma lista de fornecedores e tal como faz com os outros, colocou-nos à vontade para sermos nós a fazer a abordagem diretamente com os noivos. Em relação ao casamento de sábado vai ser o 2º casamento dos noivos(o 1º foi no Canadá com flores artificiais e o 2º vai ser com a família de Portugal. Disse que pediram o mínimos de custos... e por isso acredita que não irão ter interesse mas ficou de lhes enviar a apresentação Apresentações e email","by":"info+mj@floresabeirario.pt"},{"id":"4d97273a-c1bb-41d0-bf63-6a9548c430c2","date":"2026-01-18T19:28:50.000Z","channel":"email","summary":"17-10-2025 email e whatsapp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"e3696175-09d5-43b4-bb00-a34b7886b3f1","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.015Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Maria Pedaços',
  'wedding_planners',
  'aceite',
  'Marta',
  'mariapedacos@gmail.com',
  '[{"label":null,"number":"913242052"}]'::jsonb,
  '{}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"b41f26ef-8b37-4624-912a-b37f8303d26d","date":"2026-01-18T19:21:06.000Z","channel":"reuniao","summary":"08-10-25 - falei com a Marta que disse que no sábado passado a Patrícia quis preservar o bouquet e andou à procura e não encontrou ninguém em Coimbra. Pediu para lhe enviar a apresentação o mais depressa possível para reencaminhar para a noiva. Deixou no ar uma possível reunião convosco e até referiu que amanhã ia a Coimbra mas que não sabia se teria tempo.... Em relação à parceria disse que trabalha com vários fornecedores e que o mais importante é o bom serviço.... Não fiquei a perceber se vai aceitar ou não os 10%?! Despediu-se com um beijinho. Quanto mais cedo lhe enviarmos a informação, mais cedo reencaminha para a noiva...","by":"info+mj@floresabeirario.pt"},{"id":"305c8a91-6283-4432-ab50-6f2d9cb81c55","date":"2026-01-18T19:21:20.000Z","channel":"email","summary":"08-10-2025 email enviado e whatsapp enviado","by":"info+mj@floresabeirario.pt"},{"id":"7fb8d6f9-c047-4913-9558-c8865298905a","date":"2026-01-18T19:21:35.000Z","channel":"telefone","summary":"16-01-26 - não atendeu","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"c92540f5-ce6f-4cce-9b47-48ccf6ca7751","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.015Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'DeVign | O Sim Começa Aqui',
  'wedding_planners',
  'aceite',
  'Sara',
  'happilyeverplanned@gmail.com
sara@devign.pt',
  '[{"label":null,"number":"925054148"}]'::jsonb,
  '{"https://www.instagram.com/devign.pt/"}'::text[],
  'Lisboa, Portugal',
  'sim',
  NULL,
  '[{"id":"a3d08c1c-c939-49e4-978f-089e14ca23fa","date":"2026-01-19T10:46:16.000Z","channel":"email","summary":"email enviado a pedir numero de telemovel","by":"info+mj@floresabeirario.pt"},{"id":"fcce5ed6-f212-4f69-b9e5-1621007bb012","date":"2026-01-23T16:19:12.000Z","channel":"outro","summary":"respondeu :\n\"Olá Ana,\nAntes de mais, muito obrigada pelo seu contacto\n\nClaro que sim! Pedia, se possível, que fosse a partir do dia 27.\"","by":"info+mj@floresabeirario.pt"},{"id":"e9c7e040-f3d2-4b77-9094-de4285336e4d","date":"2026-01-29T12:41:20.000Z","channel":"email","summary":"Dia 29-01-26 falei com a Sara que casou há 3 anos e que escolheu um bouquet de flores secas exatamente para o preservar ao longo do tempo. Disse também que tem uma parceira de faz bouquets com flores de plástico.... Disse que cada vez mais também há preferência pela escolha da fita do dou bouquet em ponto cruz, rendas e que eventualmente também poderiam ficar no quadro... Vive em Fernão Ferro (margem sul) e perguntou-me se poderia entregar-me o bouquet. Faz casamentos em todo o país e o próximo é em Julho. Falei da necessidade de reservar a data. Enviar email para o novo endereço. Apresentações em ambas as linguas.","by":"info+mj@floresabeirario.pt"},{"id":"ed7151c3-8328-4120-bcf7-fe050a872554","date":"2026-01-29T16:25:15.000Z","channel":"email","summary":"email enviado, whatsapp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"c2f97b4a-eb89-4ca0-b40e-26f4e3b67d36","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.015Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'BLÔ WEDDING STUDIO by Rita Melo',
  'wedding_planners',
  'aceite',
  'Rita',
  'Hello@blo-weddingstudio.com',
  '[]'::jsonb,
  '{"https://www.instagram.com/blo.weddingstudio?igsh=eTc4eWtraWk5djc4"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[{"id":"212fc6d2-78dd-43a1-8cc7-d8bfbe242048","date":"2026-01-19T10:49:08.000Z","channel":"email","summary":"email enviado a pedir numero de telemovel","by":"info+mj@floresabeirario.pt"},{"id":"3bf07dbe-8474-4e9d-a097-b46682d8f337","date":"2026-02-09T19:59:31.000Z","channel":"outro","summary":"Respondeu\n\"Bom dia Ana,\n\nMuito obrigada pelo seu contacto!\n\nVou guardar o vosso contacto para que, sempre que alguma noiva demonstre interesse neste tipo de preservação do bouquet, possa partilhar a vossa informação.\n\nDesejo-vos muito sucesso e obrigada mais uma vez por terem entrado em contacto.\n\nObrigada,\nRita\"","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Guida Weddings',
  'wedding_planners',
  'confirmado',
  'Guida
Lúcxia',
  'hello@guidaweddings.com',
  '[{"label":null,"number":"968627454"},{"label":null,"number":"963760661"}]'::jsonb,
  '{"https://guidaweddings.com/"}'::text[],
  'Viseu, Portugal',
  'sim',
  'alt. tele: 963 760 661',
  '[{"id":"bea460b5-612a-4f30-9049-5e27e6e2dddc","date":"2026-01-18T19:48:38.000Z","channel":"telefone","summary":"03-10-25 1º contacto tlm, atendeu a Lúcia. Disse que os noivos são todos estrangeiros e por isso a apresentação em inglêsA maior parte deles são no Douro. Ficou interessada na parceria embora tivesse que me despedir à pressa porque ia entrar para uma reunião...","by":"info+mj@floresabeirario.pt"},{"id":"fc594e3c-1b90-4c81-be41-e30435c759e6","date":"2026-01-18T19:48:48.000Z","channel":"email","summary":"3/10/2025 email enviado\n\nrespondeu que ia-nos meter nas newsletter dela","by":"info+mj@floresabeirario.pt"},{"id":"e5494363-d8ec-4a6b-a047-3c57a681f77c","date":"2026-01-18T19:48:58.000Z","channel":"outro","summary":"Dia 12 Jan rejeitou 2ª tentativa de contacto para pds","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'ROMÃ Vineyard Event Design',
  'wedding_planners',
  'confirmado',
  'Rute Carvalho',
  'info@romaeventos.pt',
  '[{"label":null,"number":"927525318"}]'::jsonb,
  '{"https://www.instagram.com/romaeventos.pt?igsh=d2hveXQxdjJjcnA5"}'::text[],
  'Matosinhos, Portugal',
  'sim',
  NULL,
  '[{"id":"2fbf7be9-c334-41d6-8cfb-4f945979639e","date":"2026-01-18T19:56:49.000Z","channel":"outro","summary":"06-08-25 falei com a Rute. Disse ter casamentos mais para a frente. Trabalham em todo o país mas mais para o Douro. Disse que passaria a recomendar aos noivos que são maioritariamente estrangeiros. Pediu contactos e apresentação em inglês para o mail","by":"info+mj@floresabeirario.pt"},{"id":"c47be9c7-21ed-4290-90eb-d2b55361abb5","date":"2026-01-18T19:56:57.000Z","channel":"email","summary":"07-08-2025 Email enviado","by":"info+mj@floresabeirario.pt"},{"id":"33a06363-8bb9-44a2-842c-72752653149d","date":"2026-01-18T19:57:18.000Z","channel":"outro","summary":"12-01-26 falei com a Rute para pds. Informou que ainda ninguém questiounou pelo serviço, sendo que só irão propor aos noivos caso vejam que faça sentido.... Achei que ainda não têm agendamentos!","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'PWEvents - Wedding & Event Planner',
  'wedding_planners',
  'confirmado',
  'Isabel Resende',
  'pwevents.portugal@gmail.com',
  '[{"label":null,"number":"915933404"}]'::jsonb,
  '{"https://www.facebook.com/eventspw/"}'::text[],
  'Odivelas, Portugal',
  'sim',
  NULL,
  '[{"id":"23dff3cb-39f9-4b9e-8a25-190bfea0ae50","date":"2026-01-18T19:55:17.000Z","channel":"email","summary":"04-08-25 falei com a Isabel. Disse que já muitas noivas lhe perguntaram pela preservação e ela como não conhecia ninguém recomendava algumas pag. FB . Disse já não ter muitos casamentos até ao final do ano. Falei-lhe da recriação... Os noivos são estrangeiros ou emigrantes. Pediu também a apresentação em inglês. Enviar por email e por Whatsapp","by":"info+mj@floresabeirario.pt"},{"id":"5fe264d9-3462-4a04-b4db-4f5af1b187bf","date":"2026-01-18T19:55:28.000Z","channel":"email","summary":"05-08-25 - Email enviado, whatsapp enviado","by":"info+mj@floresabeirario.pt"},{"id":"8392273d-3216-4852-b580-c8126d90f81c","date":"2026-01-18T19:55:45.000Z","channel":"outro","summary":"11-09-25 - Falei com a Isabel porcausa dos noivos que vivem na china e que aparentemente não mostraram interesse na preservação","by":"info+mj@floresabeirario.pt"},{"id":"035f30d8-b560-429f-a302-b91ef1fb7e17","date":"2026-01-18T19:56:27.000Z","channel":"outro","summary":"13-01-26 - falei com a Isabel que confirmou ter recebido o sinal. Disse já estar a tratar da agenda para 2027. Neste momento está a tratar das provas de menus, de cabelo e que só mais tarde é que falará na possibilidade da preservação. Os primeiros casamentos são a partir de Maio entre fds e dias de semana","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Prometo amar-te',
  'wedding_planners',
  'confirmado',
  'Daniel Casteleira - Decoração, Rauel  noivos, Lara não disse o que fazia e há mais',
  'sim@prometoamarte.pt',
  '[{"label":null,"number":"913666826"}]'::jsonb,
  '{"https://prometoamarte.pt/pt/"}'::text[],
  'Coimbra, Portugal',
  'nao',
  'Recomendados pela quinta das Lágrimas
Intitulam-se de Wedding Designers',
  '[{"id":"4e478723-0f88-4644-92a6-028fa1c640ee","date":"2026-01-18T19:45:40.000Z","channel":"email","summary":"06-08-25 . Falei com o Daniel Têm casamentos todos os dias. Disse que há noivas que solicitam a preservação. Pediu o email / apresentação em inglês. Não quer comissões. Disse que preferem que as comissões sejam a favor dos noivos. Disse-lhe que isso não faríamos porque qualquer noivo que preserve o bouquet com FBR pagam o mesmo valor pelo quadro que todos os outros! Deverá ser a Raquel que vai dar o feedback. No email referir: conforme conversa telefónica com o Daniel... Disse-lhe que tinha sido a Qta das Lágrimas que os recomendou!\n\nMAIL URGENTE","by":"info+mj@floresabeirario.pt"},{"id":"51958a99-3208-445f-99e6-b42304d83d60","date":"2026-01-18T19:45:49.000Z","channel":"email","summary":"06-08-25 - Email enviado","by":"info+mj@floresabeirario.pt"},{"id":"79eb7c4f-74e6-4531-95f3-c1660b0d8c94","date":"2026-01-18T19:46:05.000Z","channel":"outro","summary":"16-01-26 - falei novamente com o Daniel que se mostrou admirado de elas não terem dado nenhum feedback. Pediu para enviarmos novamente a informação e que ele iria fazer pressão para elas responderem até porque é um serviço interessante para oferecer aos noivos. Informou também que a empresa \"Prometo amar-te\" já não existe porque fundiu-se com uma outra que me parececeu chamar-se \"alfaiate\" e agora o novo nome éalgo em francês que me pareceu La Fée Zoom??? De qualquer maneira o mail atual ainda está ativo","by":"info+mj@floresabeirario.pt"},{"id":"98eeef60-873d-4cd3-9061-fa9def6a8d2b","date":"2026-01-19T10:11:32.000Z","channel":"email","summary":"email enviado","by":"info+mj@floresabeirario.pt"},{"id":"8a2d7551-0bae-4454-b9f4-34be486a8ac5","date":"2026-01-21T10:44:49.000Z","channel":"outro","summary":"PASSARAM A CHAMAR-SE LA SAISON","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Unique dream wedding by daniela baptista',
  'wedding_planners',
  'confirmado',
  'Daniela Batista',
  'info@uniquedreamwedding.com',
  '[{"label":null,"number":"925843246"}]'::jsonb,
  '{"https://uniquedreamwedding.com/en"}'::text[],
  'Leiria, Portugal',
  'nao',
  NULL,
  '[{"id":"c79637ae-946b-4002-b2bf-304b78a1c863","date":"2026-01-18T19:57:31.000Z","channel":"telefone","summary":"06-08-25- desligaram a chamada","by":"info+mj@floresabeirario.pt"},{"id":"7fe0f4c5-b7c1-45b7-aed8-c406abf0bc54","date":"2026-01-18T19:57:48.000Z","channel":"telefone","summary":"12-09-25 devolveu a chamada. Disse que já trabalhou com outra empresa que faz preservação mas não disse qual. Os noivos são essencialmente estrangeiros e diz que a maior parte quer levar o bouquet e fazer a preservação no país de origem! Trabalham em todo o país, inclusivé neste momento já tem uma rapariga no Funchal. Não quer nem trabalha com comisões. Se quisermos oferecer algo, podemos oferecer-lhe um almoço uma vez por ano... Daqui a 4 ou 5 semanas vai abrir uma empresa em Leiria (armazém) com o objetivo de não recorrer ao aluguer, propor um acompanhamento presencial, seja de casamentos ou corporativo. A ideia é alcançar também o público português. Vai empregar algumas pessoas, inclusivé de design!\n\nEnviar apresentação pelo whatsappe email -Pediu a informação para guardar e apresentar sempre que precise","by":"info+mj@floresabeirario.pt"},{"id":"5807ed6a-04ce-43ab-a33d-72c1e2ec4cea","date":"2026-01-18T19:58:00.000Z","channel":"email","summary":"13-09-2025 - Email e wapp enviados","by":"info+mj@floresabeirario.pt"},{"id":"5eded266-2db5-49f2-a886-9e702bbd5d4e","date":"2026-01-18T19:58:18.000Z","channel":"outro","summary":"13-01-26 - Falei rapidamente com ela porque já estava fora do trabalho. Estava com os filhos porque ia para uma feira em Paris e também na China. Só regressa dia 27 de jan. Disse que já tem o nosso contacto e que quando fosse necessário nos iria contactar.","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Catarina Faria',
  'wedding_planners',
  'confirmado',
  'Catarina',
  'catarinafariaplanner@gmail.com',
  '[{"label":null,"number":"918515091"}]'::jsonb,
  '{"https://catarinafariaweddings.com/weddingplanner#%C3%ADnicio"}'::text[],
  'Lisboa, Portugal',
  'sim',
  NULL,
  '[{"id":"c7ca7aed-3456-483b-8ec7-b68384472ccf","date":"2026-01-18T19:58:32.000Z","channel":"email","summary":"02-10-25 - a catarina ficou super entusiasmada com o nosso contacto. Disse que teve uma noiva (Joana) há 15 dias que lhe perguntou se conhecia alguém que presevasse o bouquet. Falei-lhe da recriação... Falou ainda que trabalha em Lisboa mas é de Coimbra e que para o próxiumo ano gostaria de trabalhar na zona de Leiria, Coimbra Aveiro e Porto... Tem um casamento no próximo sábado e iria propôr aos noivos. Enviar email e whatsapp","by":"info+mj@floresabeirario.pt"},{"id":"8cb0be04-a1c3-4d85-a0a9-e2151ca577d0","date":"2026-01-18T19:58:41.000Z","channel":"email","summary":"04-10-2025 email enviado\n\n0710-2025 - whatapp enviado","by":"info+mj@floresabeirario.pt"},{"id":"4fcfb95d-4ff7-4675-9c4b-9bed1f0ad9ec","date":"2026-01-18T19:58:52.000Z","channel":"telefone","summary":"13-01-26 - não atendeu","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'La Key Events',
  'wedding_planners',
  'confirmado',
  'Carina',
  'info@lakeyevents.com',
  '[{"label":null,"number":"910837999"}]'::jsonb,
  '{"https://lakeyevents.com/"}'::text[],
  'Sintra, Portugal',
  'sim',
  NULL,
  '[{"id":"65349f04-4ef0-4bda-a3cc-a52bff6f59c3","date":"2026-01-18T19:59:12.000Z","channel":"telefone","summary":"10-10-25 - atendeu a carina que disse apenas trabalhar com noivos estrangeiros e quase nenhuns perguntaram pela preservação...porém não vê problema em nos recomendar. Para memória futura a voz da Carina parecia de alguém que tinha acordado há pouco tempo. Era muito pausada e sem energia... Pediu toda a informação inclusivé as apresentações por email. Disse que só se organizam por email...Em relação aos noivos que casam para o ano ainda não chegaram à parte das flores...","by":"info+mj@floresabeirario.pt"},{"id":"4b113072-b70c-47f2-8b13-1207f00801ba","date":"2026-01-18T19:59:19.000Z","channel":"email","summary":"10-10-2025 email enviado","by":"info+mj@floresabeirario.pt"},{"id":"4caaa8a8-567d-43ee-9e48-a2bb472c7fe0","date":"2026-01-18T19:59:42.000Z","channel":"email","summary":"13-01-26 Falei novamente com a Carina que se recordava da nossa conversa mas que na altura não a tinha apanhado numa boa fase da vida dela!!! O primeiro casamento vai ser em Maio . Pediu para lhe enviarmos novamente o email para ter a certeza que não fica em falta connosco! Disse talvez ser agora uma boa altura para mandar para os noivos","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Ana Almeida Wedding Planner & Creator',
  'wedding_planners',
  'confirmado',
  'Ana Almeida',
  'hello@anaalmeidaweddings.com',
  '[{"label":null,"number":"916751797"}]'::jsonb,
  '{"https://anaalmeidaweddings.com/"}'::text[],
  NULL,
  'sim',
  NULL,
  '[{"id":"9424f2b8-143f-4bfb-b8cd-bb54cb68a19c","date":"2026-01-18T19:26:51.000Z","channel":"outro","summary":"14-01-26 - falei com a Ana que disse já ter muitos casamentos, sendo o 1º para abril. Ficou interessada. Colocou várias perguntas nomeadamente como seria a entrega do bouquet se iria sobrar para ela''?! Pediu as apresentações em inglês e português para além de toda a informação. Houve uma sinergia entre nós! Perguntou como tínhamos obtido o contacto , ao que lhe respondi pelo FB","by":"info+mj@floresabeirario.pt"},{"id":"e55033c8-5a07-42f8-9082-72d23e4c7478","date":"2026-01-18T19:26:59.000Z","channel":"email","summary":"15-01-2026 - email enviado","by":"info+mj@floresabeirario.pt"},{"id":"b48f610a-b12a-4d61-a3ab-3dcadba92ba9","date":"2026-01-20T17:34:11.000Z","channel":"outro","summary":"Disse que iria \"partilhar o vosso serviço com os casais que tenho casamento este ano.\"","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Algarve Dream Weddings',
  'wedding_planners',
  'confirmado',
  'Cláudia Mota',
  'Info@algarvedreamweddings.com     c.mota@algarvedreamweddings.com',
  '[{"label":null,"number":"963870224"}]'::jsonb,
  '{"https://www.facebook.com/algarvedreamwedding/"}'::text[],
  NULL,
  'sim',
  NULL,
  '[{"id":"7700a9f9-9d7e-4c00-a118-083a3c49ac75","date":"2026-01-18T19:49:44.000Z","channel":"outro","summary":"28-07-25 - falei com a Cláudia. Também só trabalham com noivos estrangeiros. Têm uma apresentação de todos os fornecedores no Cana profissional. O que pediu para que toda a equipa tenha comhecimento, um mail com a nossa apresentacaço e contactos, bem como uma apresentação em inglês para adicionarem-na aos outros parceiros como aluguer de carros, balões, etc...) Não tinham este serviço, têm noivas que perguntam por ele e vão divulgar-nos","by":"info+mj@floresabeirario.pt"},{"id":"3fce036a-d8d8-4a96-a440-64c0d5313cc0","date":"2026-01-18T19:49:51.000Z","channel":"email","summary":"29-07-2025 - Email e apresentação enviada","by":"info+mj@floresabeirario.pt"},{"id":"13565d98-36b7-42d8-8fa5-f0f60458a639","date":"2026-01-18T19:50:16.000Z","channel":"outro","summary":"04-08-25 - A Cláudia disse não ter recebido o emai. Deu o mail pessoal e pediu para reenviar para o mail dela e para o wtassapp","by":"info+mj@floresabeirario.pt"},{"id":"4b1cbdce-9912-4818-a866-029c2a1d02b4","date":"2026-01-18T19:50:30.000Z","channel":"email","summary":"05-08-25 - Email enviado, mensagem whataspp enviada","by":"info+mj@floresabeirario.pt"},{"id":"fce9b3de-b654-4fd3-971e-f3a1197d616a","date":"2026-01-18T19:50:40.000Z","channel":"email","summary":"12-01-26 - 2ª tentativa de contacto para pds -A Cláudia pediu para enviar email para o email a confirmar que os valores se mantêm","by":"info+mj@floresabeirario.pt"},{"id":"d7b944c3-e186-4d77-acf5-88f30e731270","date":"2026-01-18T19:50:47.000Z","channel":"email","summary":"13-01-2026 - email de confirmação de preços enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Daniel Julião Eventos e Arte Floral',
  'wedding_planners',
  'confirmado',
  'Daniel',
  'danieltjuliao@gmail.com',
  '[{"label":null,"number":"914190728"}]'::jsonb,
  '{"https://www.instagram.com/eventos_danieljuliao/"}'::text[],
  'Gafanha da Nazaré, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"c950e23e-436f-4b79-b5c0-9aa635530ac0","date":"2026-01-18T19:37:58.000Z","channel":"email","summary":"24-09-25 - o Daniel disse que tinha uma amiga que fazia por hobby alguma secagem mas que não vivia cá e nem sempre tinha essa disponibilidade. Ainda tem casamentos até ao final do ano embora já esteja na reta final. Trabalha com noivos portugueses e estrangeiros. Falou que teve uma noiva inglesa que queria muito a preservação. Falei da recriação e ele disse que lhe ia propor isso. Enviar informação por mail e pelo whatsapp. Disse que nos ia seguir nas redes sociais e disse que também o faríamos. Propus incluir-nos nos orçamentos para 2026","by":"info+mj@floresabeirario.pt"},{"id":"1b5c978c-98b1-47b3-9488-3ee93ff25070","date":"2026-01-18T19:38:05.000Z","channel":"email","summary":"25-09-2025 - Email e whatapp enviado","by":"info+mj@floresabeirario.pt"},{"id":"244fa562-d22d-499a-9c36-c2826e2041a0","date":"2026-01-18T19:38:46.000Z","channel":"outro","summary":"27/11/2025 - Partilhou-nos no seu story no instagram","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Diana Julião | PT Wedding Planner',
  'wedding_planners',
  'confirmado',
  'Diana',
  'diana@dianajuliao.com',
  '[{"label":null,"number":"911881440"}]'::jsonb,
  '{"https://dianajuliao.com/"}'::text[],
  NULL,
  'sim',
  NULL,
  '[{"id":"df4f2ac1-2d50-486e-81f8-dfce63b2496c","date":"2026-01-18T19:52:28.000Z","channel":"email","summary":"06-08-25- falei com a Diana. Só tem casamentos para setembro. Disse conhecer mas as noivas norte americanas não têm questionado pela preservação. Ficou interessada e pediu a informação e contactos por mail. Disse-lhe que mandávamos também a apresentação em inglês","by":"info+mj@floresabeirario.pt"},{"id":"33a5904c-29c6-42e9-aa30-86afd87c3c67","date":"2026-01-18T19:52:42.000Z","channel":"email","summary":"07-08-2025 - Email enviado","by":"info+mj@floresabeirario.pt"},{"id":"40f33ed7-4ea6-4dfe-8da2-f9d017656494","date":"2026-01-18T19:53:19.000Z","channel":"outro","summary":"12-01 26 falei com a Dia na para pds . Disse que este ano têm essencialmente noivos indianos e que têm uma forma diferente de celebrar o csamento não dando importância às flores. Neste caso nem vão falar no assunto. Apenas para os norte americanos e europeus e aonda não têm nenhum casal","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Mary me',
  'wedding_planners',
  'confirmado',
  'Ana',
  'popthequestion@maryme.pt',
  '[{"label":null,"number":"911745406"},{"label":null,"number":"220986761"}]'::jsonb,
  '{"https://maryme.pt/"}'::text[],
  'Porto, Portugal',
  'sim',
  'alt tele: 22 09 86 761',
  '[{"id":"4b609af6-3abd-4d3b-9109-23cbbf08532b","date":"2026-01-18T19:49:16.000Z","channel":"outro","summary":"19.09.2025 - de ana para ana, diz que os noivos sao estrangeiros, tem um projeto para casamentos sustentaveis e ecologicos, onde o FBR se enquadra e que de certeza que iamos falar de futuro. planeamento de 2025 fechado, só para 2026 agora.","by":"info+mj@floresabeirario.pt"},{"id":"5bde5df8-4f81-460a-85ad-f087e0f9c192","date":"2026-01-18T19:49:26.000Z","channel":"email","summary":"email enviado","by":"info+mj@floresabeirario.pt"},{"id":"8301fc0a-d79b-4093-b1b9-7e46230e01a9","date":"2026-01-18T19:49:33.000Z","channel":"telefone","summary":"Dia 12 de Jan não atendeu 2ª tentativa de contacto para pds","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Wedding Planner in Portugal',
  'wedding_planners',
  'confirmado',
  'Ana de Lima',
  'info@weddingplannerinportugal.com',
  '[{"label":null,"number":"915621003"}]'::jsonb,
  '{"https://weddingplannerinportugal.com/wedding-planner-contacts/"}'::text[],
  'Cascais, Portugal',
  'sim',
  NULL,
  '[{"id":"280f0de9-a920-45ed-97fb-19b6ee3453f5","date":"2026-01-18T19:51:24.000Z","channel":"outro","summary":"24-07-25 - A Ana desconhecia o trabalho. Trabalha essencialmentr com noivos estrangeiros. Já pesquisou as redes sociais e o site da FBR e solicitou o mail","by":"info+mj@floresabeirario.pt"},{"id":"fc1a70f9-8342-448e-af1a-13fe109e187f","date":"2026-01-18T19:51:31.000Z","channel":"email","summary":"24-07-25 - email enviado","by":"info+mj@floresabeirario.pt"},{"id":"279397a0-f50a-4b03-a408-cea81b1aba10","date":"2026-01-18T19:51:40.000Z","channel":"outro","summary":"04-08-25 - falei com a Ana que confirmou o recebimento da informação, que estava tudo bem! Nesta data estava de férias, mas tem tido muito trabalho , razão pela qual não respondeu mas para considerarmos confirmado!","by":"info+mj@floresabeirario.pt"},{"id":"12d61b9d-0210-4fa3-affe-3c65988a4806","date":"2026-01-18T19:52:01.000Z","channel":"telefone","summary":"12-01-26 2ª tentativa de contacto para pds - rejeitpi chamada","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'First Page - Designed Events',
  'wedding_planners',
  'confirmado',
  'Carla Luís',
  'firstpage@firstpage.pt',
  '[{"label":null,"number":"917987948"}]'::jsonb,
  '{"https://firstpage.pt/"}'::text[],
  'Aveiro, Portugal',
  'sim',
  NULL,
  '[{"id":"32e46d69-356a-4d77-86e2-1ad7ce202d5b","date":"2026-01-18T19:54:35.000Z","channel":"whatsapp","summary":"28-07-25 falei com a responsável. Disse que nunca teve um pedido por parte dos noivos para preservar o bouquet, embora disse conhecer o trabalho e que estava interessada receber por whatsapp os nossos contactos","by":"info+mj@floresabeirario.pt"},{"id":"66f91ec2-aeff-4fb7-b292-bbd8dd2a2425","date":"2026-01-18T19:54:44.000Z","channel":"email","summary":"05-08-2025 - Email enviado, mensagem whatapp enviada","by":"info+mj@floresabeirario.pt"},{"id":"2cb0c8a2-c801-43aa-ac12-7702a30ffb4d","date":"2026-01-18T19:55:00.000Z","channel":"outro","summary":"12-01-26 2ª tentativa de contacto para pds. Disse que sempre que haja interesse por parte dos noivos, nós somos a priooridade...","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Maria Ventura Events',
  'wedding_planners',
  'confirmado',
  'Maria Ventura',
  'mariaventuraevents@gmail.com',
  '[{"label":null,"number":"938885850"}]'::jsonb,
  '{"https://www.mariaventuraevents.com/"}'::text[],
  'Sintra, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"fb2d4971-23e3-430d-9746-8eed96fd3336","date":"2026-01-20T22:04:03.000Z","channel":"outro","summary":"Disse já ter uma pessoa que é florista e que faz preservação, sendo esse contacto que costuma dar aos noivos., porém disse que não se importa de ter mais contactos porque para ela o importante é os seus clientes terem possibilidade de escolha e estarem satisfeitos. Em relação à comissão disse que agradecia mas que independentemente de receber ou não é ra isso que fazia nos recomendar ou não.. Gostei muito de falar com ela e disse-lhe isso ao que respondeu que também e despediu-se com um grande beijinho!","by":"info+mj@floresabeirario.pt"},{"id":"47e4744c-998b-415d-a125-530b7eaab6f8","date":"2026-01-20T22:31:07.000Z","channel":"email","summary":"email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'La Saison',
  'wedding_planners',
  'confirmado',
  'Lara Cerveira',
  'laracerveira@lasaison.pt',
  '[{"label":null,"number":"916741427"}]'::jsonb,
  '{"https://lasaison.pt/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[{"id":"48d4c146-506c-40f0-b177-045a55f6eff9","date":"2026-01-21T10:47:45.000Z","channel":"email","summary":"Eram os \"prometo amar-te\", passaram a la saison. Falou-se com o Daniel (ver info no prmeto amar-te), mas respondeu ao email a Lara Cerveira a confirmar a parceria","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Portugal West Weddings',
  'wedding_planners',
  'rejeitado',
  NULL,
  'info@portugalwestweddings.com',
  '[{"label":null,"number":"912996955"}]'::jsonb,
  '{"https://www.portugalwestweddings.com/"}'::text[],
  NULL,
  'a_confirmar',
  'MESMO CONTACTO QUE EVENTOS DA HÉLIA FLORISTA',
  '[{"id":"aafa3777-d7ba-4069-ae13-0403a40dfa0e","date":"2026-01-18T20:00:50.000Z","channel":"email","summary":"08-08-25 - nã falei com Hélia. No email falar na tal belga...","by":"info+mj@floresabeirario.pt"},{"id":"f77f7069-30f4-4ac7-9850-99c3f9f1d19c","date":"2026-01-18T20:00:57.000Z","channel":"outro","summary":"24-08-2025 - Má experiência com esta florista (Hélia). Não queremos fazer parceria com eles.","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'The wedding co',
  'wedding_planners',
  'rejeitado',
  'jasmine - co
Marta - resp fornecedores',
  'enquiries@theweddingco.pt',
  '[{"label":null,"number":"916689275"},{"label":null,"number":"915533258"}]'::jsonb,
  '{"https://theweddingco.pt/"}'::text[],
  NULL,
  'a_confirmar',
  'de luxo alt tele: 915 533 258',
  '[{"id":"fcbfeadd-4de7-4a68-9a91-c34603b63775","date":"2026-01-18T19:04:59.000Z","channel":"telefone","summary":"02-10-25 - 1º contacto tlm atendeu Jasmine (falava português mas com sotaque) , ewstrava a conduzir e apenas disse para enviar por email o que nós fazíamos ao cuidado da Marta que é a pessoa que é responsável pelos fornecedores. Nesse email referir que falei com ela. Disse que praticamente todos os noivos são estrangeiros, nomeadamente norte americanos. Falei da \"moda\" nos EUA da qual tinha conhecimento. Garantiu que depois do enviarmos o email preferencialmente com imagens, nos dariam uyma resposta. Não falei em parceria....","by":"info+mj@floresabeirario.pt"},{"id":"5f0970ec-270e-4cee-9f21-aaa61e0c0474","date":"2026-01-18T19:05:16.000Z","channel":"email","summary":"04-10-2025 email enviado","by":"info+mj@floresabeirario.pt"},{"id":"9bab100e-0c4d-4689-94e2-4c5775efaf68","date":"2026-01-18T19:05:42.000Z","channel":"outro","summary":"13-01-26 falei com a Marta que disse que se não responderam foi porque não achou interesse. Quando lhe disse que o interesse seria dos noivos e não dela, disse que estão cá 3 dias e que não vê como isso poderia ser possível... Disse que estava em casa doente e despachou-me!","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

-- ── FLORISTAS (44 parceiros) ──

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Floral Lovers',
  'floristas',
  'por_contactar',
  NULL,
  'geral@florallovers.pt',
  '[]'::jsonb,
  '{"https://www.instagram.com/floral.lovers/"}'::text[],
  'Aveiro, Portugal',
  NULL,
  NULL,
  '[{"id":"33550222-5ac1-4d96-a1fa-3d6ba11bd80f","date":"2026-01-20T16:58:36.000Z","channel":"outro","summary":"Domínio em baixo, ultima publicação no IG a 26 de maio. Unico contacto possívelapenas pelo IG","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"00777779-2273-404a-8680-f5d10a6196e7","title":"Enviar email/form","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Alecrimágico,lda',
  'floristas',
  'por_contactar',
  NULL,
  'alecrimagico@gmail.com',
  '[{"label":null,"number":"231098786"}]'::jsonb,
  '{"https://www.facebook.com/alecrimagico/"}'::text[],
  'Mortágua, Portugal',
  NULL,
  NULL,
  '[]'::jsonb,
  '[{"id":"c1bc586a-751d-44cd-8a77-b47bd9370908","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Ely Flowers, Weddings & Events',
  'floristas',
  'por_contactar',
  NULL,
  'ely.store@elyflowers.com',
  '[{"label":null,"number":"914135292"}]'::jsonb,
  '{"https://www.facebook.com/elyflowersalgarve"}'::text[],
  'Almancil, Portugal',
  NULL,
  NULL,
  '[]'::jsonb,
  '[{"id":"9c5a99f6-f339-4d0b-b061-3d2504af4884","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Florista Barri Flor',
  'floristas',
  'por_contactar',
  NULL,
  'mariacgodinho@hotmail.com',
  '[{"label":null,"number":"914991111"}]'::jsonb,
  '{}'::text[],
  'Ovar, Portugal',
  NULL,
  NULL,
  '[]'::jsonb,
  '[{"id":"d0abc2a2-fcd5-44f5-a1bf-f242653c2cbb","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Pétala Rural',
  'floristas',
  'por_contactar',
  NULL,
  'geral@petalarural.com',
  '[{"label":null,"number":"917494677"}]'::jsonb,
  '{"https://petalarural.com/index.php"}'::text[],
  'Vale de Cambra, Portugal',
  NULL,
  NULL,
  '[]'::jsonb,
  '[{"id":"f0f6abd0-22b1-487f-a5b9-e47be759cebc","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Silvi-Flor Arte Floral e Decoração',
  'floristas',
  'por_contactar',
  NULL,
  'silviflor.artefloral@gmail.com',
  '[]'::jsonb,
  '{"https://www.facebook.com/p/Silvi-Flor-Arte-Floral-e-Decora%C3%A7%C3%A3o-100075728026341/?_rdr"}'::text[],
  'Oliveira de Azeméis, Portugal',
  NULL,
  NULL,
  '[]'::jsonb,
  '[{"id":"7c840c8f-680c-437f-abe0-fca73053e82b","title":"Enviar email/form","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Florista Cidália Sousa',
  'floristas',
  'por_contactar',
  NULL,
  'cidaliasousaciflor@gmail.com',
  '[{"label":null,"number":"916503840"}]'::jsonb,
  '{"https://www.cidaliasousa.com/"}'::text[],
  'Algarve, Portugal',
  NULL,
  'Recomendada por Claúdia de  Algarve Dream Weddings',
  '[]'::jsonb,
  '[{"id":"244fab2f-e2fa-4582-b9fa-0a7748352e7a","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'White Limonium - Flowers & Design',
  'floristas',
  'por_contactar',
  NULL,
  NULL,
  '[{"label":null,"number":"231204264"}]'::jsonb,
  '{"https://www.facebook.com/floristaventosadobairro"}'::text[],
  'Mealhada, Portugal',
  NULL,
  NULL,
  '[]'::jsonb,
  '[{"id":"05a3d64f-9d1c-4085-ab74-0869bd436411","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'M&M Flowers',
  'floristas',
  'por_contactar',
  NULL,
  'form no site  https://mmflowers.pt/contacts/',
  '[{"label":null,"number":"914534538"}]'::jsonb,
  '{"https://www.instagram.com/mmflowers.pt/"}'::text[],
  'Coimbra, Portugal',
  NULL,
  'Quinta das Lágrimas disse-nos que a maior parte dos casamentos é com eles',
  '[]'::jsonb,
  '[{"id":"7f915cf9-fa5b-461f-8bc2-1db0a96ad3e5","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Flor do Lago',
  'floristas',
  'por_contactar',
  'Cristina',
  'flordolago@sapo.pt',
  '[{"label":null,"number":"935235136"}]'::jsonb,
  '{"https://www.facebook.com/Flordolago/?locale=pt_PT"}'::text[],
  'Covilhã, Portugal',
  NULL,
  NULL,
  '[{"id":"e46bfcba-33e8-48f1-84c3-3c63d335cae5","date":"2026-01-20T16:58:28.000Z","channel":"telefone","summary":"13-01-26 falei com a funcionária que disse já ter havido uma noiva que perguntou pela preservação do bouquet em quadro Pediu para ligar amanhã elas 15:00","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"2c40fb1c-5cdd-44ff-9a69-798a290f5ec2","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Florista Acquarela',
  'floristas',
  'por_contactar',
  NULL,
  'florista.acquarela@gmail.com',
  '[{"label":null,"number":"231922177"}]'::jsonb,
  '{"https://www.facebook.com/florista.acquarela/?locale=pt_PT"}'::text[],
  'Mortágua, Portugal',
  NULL,
  NULL,
  '[]'::jsonb,
  '[{"id":"04562583-4433-49a0-8abe-a02cdb607dde","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'RR Florista',
  'floristas',
  'por_contactar',
  NULL,
  'rrflorista@outlook.pt',
  '[{"label":null,"number":"918011632"}]'::jsonb,
  '{"https://www.facebook.com/ricardorodriguesfloraldesigns/"}'::text[],
  'Antanhol, Portugal',
  NULL,
  NULL,
  '[{"id":"d86a7305-f266-4739-9b9a-1c1206660c2a","date":"2026-01-20T16:58:18.000Z","channel":"telefone","summary":"22-07-25 - não atenderam 25-07-25 não atendeu Tem um site \"manhoso\" https://i29193.wixsite.com/rrflorista/contacto","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"5cb13f15-8425-4153-bdc2-0789de1f6e05","title":"Enviar email/form","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Florista Isilda Abreu',
  'floristas',
  'por_contactar',
  NULL,
  'geral@floristaisilda.pt',
  '[{"label":null,"number":"933438171"}]'::jsonb,
  '{"https://floristaisilda.pt/"}'::text[],
  'Coimbra, Portugal',
  NULL,
  NULL,
  '[]'::jsonb,
  '[{"id":"53c841ea-5105-4154-a777-4f1b4e27b57c","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Florista Pétala D''ouro',
  'floristas',
  'por_contactar',
  NULL,
  NULL,
  '[{"label":null,"number":"234667568"}]'::jsonb,
  '{}'::text[],
  'Aveiro, Portugal',
  NULL,
  NULL,
  '[]'::jsonb,
  '[{"id":"40ab8f4e-205b-4d44-a8bb-bfb7b5acd922","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Jasmim em Flor',
  'floristas',
  'por_contactar',
  NULL,
  'jasmimemflor21@gmail.com',
  '[{"label":null,"number":"967686772"}]'::jsonb,
  '{"https://algarveflowerdesign.com/pt/"}'::text[],
  'Algarve, Portugal',
  NULL,
  'Recomendada por Claúdia de  Algarve Dream Weddings',
  '[]'::jsonb,
  '[{"id":"f60d3c91-2467-4bb3-8759-4cebbb57d6ea","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Ricaflor',
  'floristas',
  'por_contactar',
  NULL,
  'atelierfloral.rico@gmail.com',
  '[{"label":null,"number":"932577375"}]'::jsonb,
  '{}'::text[],
  'Ovar, Portugal',
  NULL,
  NULL,
  '[]'::jsonb,
  '[{"id":"43d65478-919d-4762-9789-03862993c08c","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Marilu - flores & ambientes',
  'floristas',
  'tentativa_contacto',
  NULL,
  'm.flores.ambientes@gmail.com',
  '[{"label":null,"number":"235205391"}]'::jsonb,
  '{}'::text[],
  'Arganil, Portugal',
  NULL,
  NULL,
  '[{"id":"c1743b4b-c9d5-4b10-9f84-ab11115b130e","date":"2026-01-20T16:38:42.000Z","channel":"telefone","summary":"22-07-25 - não atendeu. Caso não atenda contactar pelas redes sociais","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"97194f2a-a90a-4407-958b-3b524c676cc1","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Loja das Variedades',
  'floristas',
  'tentativa_contacto',
  NULL,
  'lojavariedades@live.com.pt',
  '[{"label":null,"number":"968289428"}]'::jsonb,
  '{"https://www.facebook.com/lojavariedades/?locale=pt_PT"}'::text[],
  'Oliveira de Azeméis, Portugal',
  NULL,
  'Não é só florista, tambem organiza os eventtos.',
  '[{"id":"278259e6-7d42-4326-8b73-292ff4d475dd","date":"2026-01-20T16:38:36.000Z","channel":"telefone","summary":"25-07-25 - Não atendeu","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"b58f0478-2883-44d4-8f38-f29166b96b60","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Florista O Desejo',
  'floristas',
  'tentativa_contacto',
  NULL,
  'info@floristadesejo.com floristadesejo4@gmail.com',
  '[{"label":null,"number":"967930751"}]'::jsonb,
  '{"https://www.facebook.com/floristaodesejoo/"}'::text[],
  'Lisboa, Portugal',
  NULL,
  'TOP 5 FLORISTAS DE CASAMENTOS EM PORTUGAL',
  '[{"id":"d84f26a6-893f-4dfd-a8a2-20eaead5a879","date":"2026-01-20T16:38:30.000Z","channel":"telefone","summary":"13-01-26 - não atendeu","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"ca82698d-b041-44f5-b82a-65fb49a5564a","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'KCKliKO',
  'floristas',
  'tentativa_contacto',
  NULL,
  'kckliko@gmail.com',
  '[{"label":null,"number":"917609836"}]'::jsonb,
  '{"https://www.kckliko.com/"}'::text[],
  'Lisboa, Portugal',
  NULL,
  'TOP 5 FLORISTAS DE CASAMENTOS EM PORTUGAL',
  '[{"id":"b847d83d-f769-40f0-a96f-ac56fdaed71b","date":"2026-01-20T16:38:22.000Z","channel":"outro","summary":"23-07-25 - foi para voive mail","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"e2ee41b9-5be3-44ca-8f41-514954feb966","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Flor do Pomar',
  'floristas',
  'tentativa_contacto',
  NULL,
  'Eventos@flordopomar.pt',
  '[{"label":null,"number":"923525835"}]'::jsonb,
  '{"https://www.flordopomar.pt/"}'::text[],
  'Coimbra, Portugal',
  NULL,
  NULL,
  '[{"id":"9b13da54-85f4-4f21-a982-29186a13bbda","date":"2026-01-20T16:38:11.000Z","channel":"telefone","summary":"2122-07-25 - rejeitou a chamada 25-07-25 - tlm inválido Recomendo contacto pelo IG https://www.instagram.com/flordopomar","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"7a81224a-c120-4cad-a17a-a26c51d0d7d1","title":"Enviar email/form","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Florista Tina',
  'floristas',
  'pendente',
  'Falei com a Joana . Responsável: D. Clementina',
  'encomendas@floristatina.pt geral@floristatina.pt',
  '[{"label":null,"number":"914423374"}]'::jsonb,
  '{"https://floristatinacoimbra.com/?srsltid=AfmBOorsYx_v8cpjwjvMGNV52TURFpM2McBA9QupthKCUYqMlEsHr02y"}'::text[],
  'Coimbra, Portugal',
  NULL,
  NULL,
  '[{"id":"afb06877-aa0d-4949-9d13-259267f4cf8a","date":"2026-01-20T16:33:27.000Z","channel":"reuniao","summary":"22-07-25 - Falei com a Joana. A D. Tina está de férias até dia 02 de agosto. Disse que só este fds tem 4 casamentos. Confirmou-me que as noivas perguntam se têm ou conhecem alguém que faça a preservação de flores e que ela Joana nos iria recomendar. Como mantem contacto com a D. Clementina, disse-lhe que iriamos mandar um mail com os nssos contactos. Face ao volume de negócios da florista sugiro que se envie o mail, hoje e que asap passes pela loja e fales com a Joana, deixando lá uma das molduras","by":"info+mj@floresabeirario.pt"},{"id":"68908784-eebe-4010-80be-57e7b13a9ce1","date":"2026-01-20T16:33:33.000Z","channel":"email","summary":"22-07 - Email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"6e586bfc-33b5-4b8d-904e-725baf20af19","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Oh, Maria Flores',
  'floristas',
  'pendente',
  NULL,
  'hello@ohmariaflores.com',
  '[{"label":null,"number":"912261413"}]'::jsonb,
  '{"https://www.ohmariaflores.com/"}'::text[],
  'Oeiras, Portugal',
  NULL,
  'TOP 5 FLORISTAS DE CASAMENTOS EM PORTUGAL',
  '[{"id":"ea2fec0b-f5be-4ecd-a63d-0c57bfb0ed2a","date":"2026-01-20T16:33:45.000Z","channel":"outro","summary":"23-07-25 - Informação e contacto indisponível","by":"info+mj@floresabeirario.pt"},{"id":"a292a618-ddca-4e07-8907-8afb9cc71f3a","date":"2026-01-20T16:33:56.000Z","channel":"email","summary":"28-07 - email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"1c1f1603-db81-4e4f-84ea-fe29ac2d1fcc","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Bosque Concepts',
  'floristas',
  'pendente',
  NULL,
  'só tem form no site',
  '[]'::jsonb,
  '{"https://www.bosqueconcepts.com/"}'::text[],
  'Lisboa, Portugal',
  NULL,
  'TOP 5 FLORISTAS DE CASAMENTOS EM PORTUGAL',
  '[{"id":"ddf36080-a40c-4778-ab88-fac7536ccc15","date":"2026-01-20T16:34:00.000Z","channel":"email","summary":"24-7-2025 - Email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"eabb18a7-6d47-467e-b410-f3768cbae572","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Babel Bloom',
  'floristas',
  'pendente',
  NULL,
  'só tem form no site',
  '[]'::jsonb,
  '{"https://www.babelbloom.com/"}'::text[],
  'Lisboa, Portugal',
  NULL,
  'TOP 5 FLORISTAS DE CASAMENTOS EM PORTUGAL',
  '[{"id":"78388ee9-3471-4cad-a63f-2663b3a0119a","date":"2026-01-20T16:34:06.000Z","channel":"email","summary":"24-7-2025 - Email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"001ce6a8-e46a-47d8-9f29-cc4cde96d8e8","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Flores de Coimbra',
  'floristas',
  'aceite',
  'Diogo Monte e Ana Paula Santos',
  'floresdecoimbra@gmail.com',
  '[{"label":"Ana paula","number":"915704383"},{"label":"Diogo","number":"933886082"}]'::jsonb,
  '{}'::text[],
  'Coimbra, Portugal',
  NULL,
  'Ana paula - 915 704 383 | Diogo - 933886082',
  '[{"id":"edbbe777-11ee-4731-a518-4d4b4df1022a","date":"2026-01-20T16:32:49.000Z","channel":"email","summary":"22-07-25 - Falei com a D. Joana. Confirmou que há interesse das noivas em preservar os bouquets. Pediu para enviarmos o email com os contactos. Os responsáveis estão cheios de trabalho mas disse que quer haja ou não interesse, irão responder.\n\n22/07 - Email enviado 29-07-25 Falei com o Sr. Nuno. Voltei a falar na preservação dos ramos e domail que enviámos. Deu-me o tlm do Responsável Diogo: 933886082. Ligar amanhã por volta das 10h e tentar agendar a reumião para 6ª feira\n\n30-07 - António - Falei com o Diogo, que também é wedding planner, e disse que estavam preenchidos até 10/25. Fiquei de ligar no inicio de 2026 para reunir e consolidar a parceria.","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"fd132104-3814-4a31-ba2a-09cbaee8a658","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.017Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'FloristaCarla',
  'floristas',
  'aceite',
  'Carla e o marido Herculano',
  'floristacarla@hotmail.com   herculanomatias@hotmail.com',
  '[{"label":null,"number":"967229102"},{"label":null,"number":"962876743"}]'::jsonb,
  '{"https://www.facebook.com/profile.php?id=100064776396975"}'::text[],
  'Mangualde, Portugal',
  NULL,
  '967 229 102  962 876 743',
  '[{"id":"9dff7144-65f9-42a8-81ca-fc37c2efa689","date":"2026-01-20T16:32:32.000Z","channel":"email","summary":"25-07-25 - falei com o sr. Herculano. Já estão a receber casamentos para 2026. Disse que as noivas estão a pedir ramos de flores naturais secas para eternizar o ramo. Ficou interessado na parceria. Pediu o email para ele mas sugiro que em cc vá o da florista","by":"info+mj@floresabeirario.pt"},{"id":"3aa73e74-3b7b-44cd-8edd-52083dbeab39","date":"2026-01-20T16:32:38.000Z","channel":"email","summary":"26-07-2025 - Email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"15546492-4159-465f-9e0f-bd9978d5c8d6","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Florista Estrelícia',
  'floristas',
  'aceite',
  'Susana',
  'florista.estrelicia.bartolomeu@gmail.com',
  '[{"label":null,"number":"911715246"}]'::jsonb,
  '{"https://www.facebook.com/p/Florista-Estrelicia-100063744662037/?locale=pt_PT"}'::text[],
  'Oliveira do Bairro, Portugal',
  NULL,
  NULL,
  '[{"id":"e693c597-4d65-42fb-8a6d-8fec0886727e","date":"2026-01-20T16:32:13.000Z","channel":"whatsapp","summary":"25-07-25 falei com a Susana . Desconhece este tipo de preservação mas ficou interessada. Pediu contacto pelo whatsapp","by":"info+mj@floresabeirario.pt"},{"id":"4fd0614e-91a6-4bbf-8fcb-29f70fcdae2e","date":"2026-01-20T16:32:22.000Z","channel":"email","summary":"08-08-25 - Email enviado, whatsapp enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"ef5ba33c-f033-4c75-ac5c-89449f9f5df0","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Florista Uau que lindo',
  'floristas',
  'aceite',
  'Isabel',
  'floristaquelindo@gmail.com',
  '[{"label":null,"number":"918979256"}]'::jsonb,
  '{"https://www.facebook.com/profile.php?id=100080573284196"}'::text[],
  'São João da Madeira, Portugal',
  NULL,
  NULL,
  '[{"id":"ddc3b8bb-bf8f-4ba2-9876-8f883be7bae3","date":"2026-01-20T16:31:48.000Z","channel":"telefone","summary":"23-07-25 - Esta florista abriu Há 1 mês embora tenha já muitos anos de experiência. Ficou interessadissíma na parceria. A questão dela fpi saber se iamos contactar mais floristas em São João da Madeira e se não podia ser ela a receber o bouquet na noiva e enviar-nos. Segundo ela se assim não for perde-se a cliente... Deixei-a à vontade nessa decisão porque após 20 min de chamada esse continuava a ser o aspecto mais importante. disse que até nos ia colocar como parceiros no site dela e iria colocar o nosso logo na loja.","by":"info+mj@floresabeirario.pt"},{"id":"b06cc2a4-1edb-4c25-8657-5f5d23b0edd2","date":"2026-01-20T16:31:54.000Z","channel":"email","summary":"24/07/25 - Email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"252051f5-0517-4fa1-b4af-350974390044","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Rosa Almeida',
  'floristas',
  'aceite',
  'Rosa',
  'rosaalmeida.florista@gmail.com',
  '[{"label":null,"number":"966336712"}]'::jsonb,
  '{"https://www.instagram.com/rosaalmeida682/"}'::text[],
  'Coimbra, Portugal',
  NULL,
  NULL,
  '[{"id":"0773399f-6a73-4219-a501-09b2f8b2752b","date":"2026-01-20T16:31:05.000Z","channel":"email","summary":"25-07-25 - Falei com a Rosa. Está cheia de trabalho O fds passadp teve 7 casamentos, este tem 6 e no proximo outros 7. Disse que as noivas que lhe falam na preservação de flores já sabem a quem entregar e falou da Aurora. Sabia que ela já tinha a agenda cheia... Disse que iria recomendar-nos e pediu o email. (devemos segui-la nas RS)","by":"info+mj@floresabeirario.pt"},{"id":"a576349d-d77a-45da-9693-5fd8bf0f9604","date":"2026-01-20T16:31:11.000Z","channel":"email","summary":"26-07-2025 - Email enviado","by":"info+mj@floresabeirario.pt"},{"id":"00212c6d-ff35-4e45-9a19-29ede0a84d2f","date":"2026-01-20T16:31:24.000Z","channel":"whatsapp","summary":"29-07-25 falei novamente com a Rosa. Disse que ainda não tinha visto o mail Pediu para mandar a informação pelo whatsapp porque assim mostrava aos noivos","by":"info+mj@floresabeirario.pt"},{"id":"5f642ebb-2876-4c23-9c1f-a0a042b9ff7f","date":"2026-01-20T16:31:30.000Z","channel":"whatsapp","summary":"08-08-25 - Mensagem whatapp enviada","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"2efb03f8-989e-401c-989b-76f1de2dd335","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Flores e Gourmet',
  'floristas',
  'aceite',
  'Ana Cristina Ramos',
  'floresegourmet@gmail.com',
  '[{"label":null,"number":"913529242"}]'::jsonb,
  '{"https://www.instagram.com/floresegourmethq/"}'::text[],
  'Coimbra, Portugal',
  NULL,
  NULL,
  '[{"id":"51f02264-cdb9-4dd5-b735-071a1ab29f1c","date":"2026-01-20T16:30:23.000Z","channel":"outro","summary":"23-07-25 - A responsável tem formação e dá formação em arte floral. Tem aloja no mercado mas diz que vai mudar para outro negócio que não quis partilhar mas que também esta relacionado com noivas. Pediu que os contactos fossem enviados por","by":"info+mj@floresabeirario.pt"},{"id":"01d13e1d-7c3e-4f2f-bf5b-816e5110b18c","date":"2026-01-20T16:30:28.000Z","channel":"whatsapp","summary":"24/07/2025 - Mensagem enviada por whatsapp","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"d8ee66c3-9631-44aa-bb68-61009727765c","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Florista A Despensa',
  'floristas',
  'aceite',
  'Ana Mendes',
  'a-despensa@hotmail.com',
  '[{"label":null,"number":"965867441"}]'::jsonb,
  '{"https://www.facebook.com/floristaadespensa/?locale=pt_PT"}'::text[],
  'Oliveira do Hospital, Portugal',
  'sim',
  NULL,
  '[{"id":"b8e5876e-e679-42a4-a3d9-51a414b5ab40","date":"2026-01-20T16:29:43.000Z","channel":"email","summary":"21-07-28 - Ficou super entusiasmada. . Fiquei de enviar email com os nossos contacos. Tem pelo menos mais 4 a 5 casamentos até ao fim de agosto. Fez uma quantidade de questões técnicas e sugeriu falar com a Maria João. Tens que lhe ligar","by":"info+mj@floresabeirario.pt"},{"id":"2f418161-182e-4cb2-b2a3-e73e9d6dcfb8","date":"2026-01-20T16:29:59.000Z","channel":"outro","summary":"21/07/2025 - MJ ligou, falei com ela","by":"info+mj@floresabeirario.pt"},{"id":"fe9f7c27-8574-4008-addc-b73842c4bc68","date":"2026-01-20T16:30:13.000Z","channel":"email","summary":"21/2025 - Email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"6bd7e64c-61e7-4a82-baa0-ffd83ce0e535","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Arte & Flor - novo nome Casa-Azul-Angueira',
  'floristas',
  'aceite',
  'Célia',
  'celiaandrade@gmail.com',
  '[{"label":null,"number":"917551958"}]'::jsonb,
  '{"https://www.instagram.com/arte.e.flor/"}'::text[],
  'Coimbra, Portugal',
  'sim',
  NULL,
  '[{"id":"c045ad80-20cd-4977-9262-5fcf26687113","date":"2026-01-20T16:29:22.000Z","channel":"email","summary":"21/07/25 - Vendeu a Arte &Flor mas correu mal. Florista à mais de 40 anos. Tem um novo projeto no mesmo espaço anterior com outro nome. Fiquei de enviar email com os contactos e ela ficou de nos recomendar e entrar em contacto connosco sempre que houver interesse","by":"info+mj@floresabeirario.pt"},{"id":"5a2478f9-f5ce-437a-8b72-80cbcf59f93a","date":"2026-01-20T16:29:27.000Z","channel":"email","summary":"21/07/2025 - Email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"2aaa522f-02d9-4753-ab0a-1e4605f06370","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Florista Mateus',
  'floristas',
  'aceite',
  'Ana Mateus',
  'floristamateus.aninhas@gmail.com',
  '[{"label":null,"number":"934169914"}]'::jsonb,
  '{}'::text[],
  'Arganil, Portugal',
  NULL,
  NULL,
  '[{"id":"c589b6a8-9668-4ecc-8d6a-7c274948b52c","date":"2026-01-20T16:29:02.000Z","channel":"email","summary":"22-07-25 Falei com a responsável. Não conhece este trabalho. disse que este ano está com poucos casamentos. (para já apenas2), porém ficou interessada em sbaer mais e fazer parceria. Enviar email","by":"info+mj@floresabeirario.pt"},{"id":"889b6048-a5a7-460d-a7ac-b6a0aed257d1","date":"2026-01-20T16:29:08.000Z","channel":"email","summary":"22/07 - Email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"711cafc4-9d03-4637-bd6a-0f8ac86918e6","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Boutique Floral',
  'floristas',
  'aceite',
  'elena',
  'helena.arte.floral@hotmail.com',
  '[{"label":null,"number":"965108968"}]'::jsonb,
  '{}'::text[],
  'Covilhã, Portugal',
  NULL,
  'Conhecida da mãe da Bia',
  '[{"id":"a1fc099a-d376-4322-8563-a9314f62d651","date":"2026-01-20T16:28:46.000Z","channel":"email","summary":"24-09-25 - Aceitou a parceria. Disse que há noivas que já escolhem levar o ramo preservado e que isso normalmente acontece mais depois do verão. Também falou de bodas de prata e ouro que são quase casamentos. Enviar email mas disse que posteriormente nos contactava por whatsapp e que ia enviar um olá!","by":"info+mj@floresabeirario.pt"},{"id":"9a063650-4f32-47e9-9473-88b2e15fe1b0","date":"2026-01-20T16:28:52.000Z","channel":"email","summary":"25-09-2025 - Email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"2fe15f73-4834-4f1e-8e9c-b10810584331","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Rendilh''art - Aida Rendilha Florista',
  'floristas',
  'aceite',
  'Alda',
  'aidarendilha@gmail.com',
  '[{"label":null,"number":"962642599"}]'::jsonb,
  '{}'::text[],
  'Taveiro, Portugal',
  NULL,
  NULL,
  '[{"id":"23c153b4-2323-44b8-80a6-b975ea15bade","date":"2026-01-20T16:28:36.000Z","channel":"whatsapp","summary":"25-07-25 -falei com a D Alda. Disse que tinha havido ou vai haver uma formação este fds em Lisboa sobre preservação de flores... Também disse que já tinha feito muitos quadros com a sflores... Neste momento não trabalha com muitas noivas excepto com amigas porque as quintas oferecem tudo aos noivos a preços imbatíveis.... Estava num meio de um trabalho e embora tivesse interesse, não conseguia estar com muita atenção ao que lhe dizia... Pediu o contacto por Whatsapp Nota: Acho pouco provável que nos recomende","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"47ff23c0-a1be-4623-921c-e010e036e590","title":"Enviar WhatsApp","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Florista Jardim Da Babilónia',
  'floristas',
  'aceite',
  'Graziete',
  'encomendas@florista.pt',
  '[{"label":null,"number":"933735785"}]'::jsonb,
  '{"https://www.facebook.com/jardimdababiloniaagueda/?locale=pt_PT"}'::text[],
  'Águeda, Portugal',
  NULL,
  NULL,
  '[{"id":"aa9ca412-4e6e-4c3d-a6a6-74be48096d11","date":"2026-01-20T16:28:25.000Z","channel":"whatsapp","summary":"25-07-25 Falei com a D Graziete Disse que este ano não tem nenhum casamento e que não quer responsabilidades. Pareceu-me já ser uma pessoa idosa. Segundo as palavras dela: \"smandem-me os vossos contactos pelo whatsapp , se aparecer alguém eu indico-vos mas não quero responsabilidades \" Enviar apenas para honrar o meu compromisso mas a probabilidade de nos recoemendar é pouco ou nenhuma!","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"ef428f56-7956-4163-99ec-e43233d6fb82","title":"Enviar WhatsApp","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Sublimart',
  'floristas',
  'confirmado',
  'Marta Fajardo',
  'sublimart@sapo.pt',
  '[{"label":null,"number":"915877064"}]'::jsonb,
  '{"https://www.facebook.com/Sublimart2010/?locale=pt_PT"}'::text[],
  'Figueira da Foz, Portugal',
  'sim',
  NULL,
  '[{"id":"2f35c658-7232-45f7-baca-e9d80b632597","date":"2026-01-20T14:20:11.000Z","channel":"email","summary":"25-07-25 - Falei com a Marta que ficou interssda na parceria. Disse que não fazia este trabalho de preservação por falta de tempo... Pediu os contactos da FBR. Perguntou-me se podiamos preservar ou fazer o quadro com a flores secas? Remeto estas questões técnicas para ti. Pediu para lhe ligares na 3ªf ; dia que tem maior disponibilidade\n\n28-07 - Email enviado","by":"info+mj@floresabeirario.pt"},{"id":"a03b6e26-740d-4467-a916-b9377b9e988a","date":"2026-01-20T16:27:30.000Z","channel":"outro","summary":"Após várias tentativas de entrar em contacto com ela, não nos responde mas continua a recomendar-nos","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Flores do Liz',
  'floristas',
  'confirmado',
  'dona rosa. responsável é sr cristovao',
  'info@flores-liz.pt',
  '[{"label":null,"number":"244828500"}]'::jsonb,
  '{"https://www.flores-liz.pt/contactus"}'::text[],
  'Leiria, Portugal',
  'sim',
  NULL,
  '[{"id":"122fcf3e-39dc-49f1-87d0-0f719309fa67","date":"2026-01-20T14:20:57.000Z","channel":"email","summary":"21-07-25 Email enviado","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Ginóflorista',
  'floristas',
  'confirmado',
  NULL,
  'ginoflorista@gmail.com',
  '[{"label":null,"number":"968331860"}]'::jsonb,
  '{"https://www.facebook.com/MariaVirginiaCarla/about/?_rdr"}'::text[],
  'Oliveira do Bairro, Portugal',
  'sim',
  NULL,
  '[{"id":"35f84fc5-7d39-47d9-b8f9-af25cbb69972","date":"2026-01-20T14:20:36.000Z","channel":"reuniao","summary":"17/07/2025 - Contacto presencial por António","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Lavanda e Jasmim',
  'floristas',
  'confirmado',
  'Joana',
  'geral@lavandaejasmim.pt',
  '[{"label":null,"number":"913864521"}]'::jsonb,
  '{"https://www.instagram.com/lavandaejasmim_estudio/"}'::text[],
  'Coimbra, Portugal',
  'sim',
  NULL,
  '[{"id":"dc545113-a7c3-4205-9909-8b08a121ffcd","date":"2026-01-20T14:21:33.000Z","channel":"email","summary":"21/07/25 - Ficou interessada. Tem para já um casamento em Set. Disse que não recomendava porque não conhecia ninguém a preservar as flores. Disse que ontem tinha visto no IG qualquer coisa das FBR. Vai seguir-nos . Fiquei de enviar email com os contactos e pediu para a Maria João ligar e agendar uma reunião apenas para falar com ela e ea conhecer. Sábado trabalha até às 13:30 e só encerra ao domingo.\n\n21/07/2025 - Reunião presencial agendada, email enviado","by":"info+mj@floresabeirario.pt"},{"id":"22fbc830-16f6-4e73-bcd5-577e58fe3a74","date":"2026-01-20T16:37:05.000Z","channel":"outro","summary":"22-07 - Confirmado preserncialmente, falou de como vamos anunciar a parceria nas redes","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Florista Em Canto da Rosa',
  'floristas',
  'confirmado',
  'Natália',
  'formosapetala@gmail.com',
  '[{"label":null,"number":"969905470"}]'::jsonb,
  '{"https://www.facebook.com/emcantodarosa/?locale=pt_PT"}'::text[],
  'Coimbra, Portugal',
  NULL,
  NULL,
  '[{"id":"95f1bd18-2f8b-448f-a821-4fa88fcfdb48","date":"2026-01-20T14:22:26.000Z","channel":"outro","summary":"22-07-25 - Falei com a responsável que disse que as suas noivas eram muito despachadas e que nenhuma lhe perguntou pela preservação de flores. Não vale a pena perdermos tempo com ela porque percebi que estava desconfiada e não iria recomendar-nos","by":"info+mj@floresabeirario.pt"},{"id":"e09dd465-1f03-44de-91e5-0335232c1dc6","date":"2026-01-20T16:37:25.000Z","channel":"reuniao","summary":"01-08-2025 - Fomos à loja e a sra ficou com os nossos contactos, caso alguém perguntasse","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Flores e Ambientes',
  'floristas',
  'confirmado',
  'Ana',
  'anaeoliveira@gmail.com',
  '[{"label":null,"number":"918210151"}]'::jsonb,
  '{"https://www.instagram.com/floreseambientes/"}'::text[],
  'Coimbra, Portugal',
  NULL,
  NULL,
  '[{"id":"e8c8f7e7-c196-427b-8af4-06a10db849b5","date":"2026-01-20T14:23:13.000Z","channel":"whatsapp","summary":"23-07-25 - falei com a Ana que estava atender um senhor e pediu-lhe autorização para atender o tlm , por isso não consegui passar bem a mensagem. Pediu o contacto por Whatsapp, embora também me tenha dado o email. Prontificou-se imediatamente a recomendar-nos sem sequer falar da parceria. agradeci mas ainda lhe disse que por cada nova recomendada por ela, receberia uma comissão.","by":"info+mj@floresabeirario.pt"},{"id":"6b565850-b564-4b07-8941-2907bbe9b88a","date":"2026-01-20T16:27:53.000Z","channel":"email","summary":"24/07 - Email enviado, memsagem whatsapp enviada","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Hélia Arte Floral',
  'floristas',
  'rejeitado',
  NULL,
  'geral@heliaartefloral.pt',
  '[{"label":null,"number":"262843149"}]'::jsonb,
  '{"https://www.heliaartefloral.pt/servi%C3%A7os-1"}'::text[],
  'Caldas da Rainha, Portugal',
  NULL,
  'Tem IMENSOS seguidores. é a florista da Joana, a nossa cliente
tem mais numeros de telemovel no site, caso este não atenda

Têm também serviço de wedding planner - empresa Portugal West Wedding (está na lista de organizadores)',
  '[{"id":"1d66ad92-04c4-4e6b-b1da-8287b7429098","date":"2026-01-20T14:19:23.000Z","channel":"telefone","summary":"08-08-25 - não atendeu\n\n24-08-2025 - Má experiência com esta florista (Hélia). Não queremos fazer parceria com eles.","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

-- ── QUINTAS_EVENTOS (21 parceiros) ──

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Solar da Levada',
  'quintas_eventos',
  'por_contactar',
  NULL,
  'geral@solardalevada.com',
  '[{"label":null,"number":"253993381"}]'::jsonb,
  '{"https://www.solardalevada.com/"}'::text[],
  NULL,
  'a_confirmar',
  'Recomendada por Quinta das Lágrimas',
  '[]'::jsonb,
  '[{"id":"d900adb7-3d38-4a0d-b4cd-ab0be42b0b25","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Quinta dos Birreiros',
  'quintas_eventos',
  'por_contactar',
  NULL,
  NULL,
  '[]'::jsonb,
  '{}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"4a021115-aaa9-403f-bf97-4a9cae812337","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Quinta das Janelas',
  'quintas_eventos',
  'tentativa_contacto',
  NULL,
  NULL,
  '[{"label":null,"number":"963884977"}]'::jsonb,
  '{}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  'Liguei 21/07 estava num velório',
  '[]'::jsonb,
  '[{"id":"e4901716-4a17-47f8-9eae-ebf59ed2fce5","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Caves de Coimbra',
  'quintas_eventos',
  'tentativa_contacto',
  NULL,
  NULL,
  '[{"label":null,"number":"964000200"}]'::jsonb,
  '{}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"b1acaf9c-58e2-48fa-b41c-8e75bf4e2ea4","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Quinta Da Fontoura, Lda',
  'quintas_eventos',
  'tentativa_contacto',
  'João',
  NULL,
  '[{"label":null,"number":"960308072"}]'::jsonb,
  '{}'::text[],
  'Alquerubim, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"691b8edd-5a39-4a8d-a578-9291b49fca2e","date":"2026-01-29T19:19:05.000Z","channel":"telefone","summary":"30/07- Está atualmente na Alemanha de férias. Ligar na segunda semana de agosto","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"55ad778f-d968-4c14-8115-cc735e4027ec","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Quinta Real Eventos',
  'quintas_eventos',
  'tentativa_contacto',
  NULL,
  NULL,
  '[{"label":null,"number":"917385542"}]'::jsonb,
  '{}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  'Ligar sexta (01 fim do dia',
  '[]'::jsonb,
  '[{"id":"f74aa751-93b5-48ef-a413-775242930f34","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Quinta do Vizo',
  'quintas_eventos',
  'tentativa_contacto',
  NULL,
  NULL,
  '[{"label":null,"number":"927189209"}]'::jsonb,
  '{}'::text[],
  'Buarcos, Portugal',
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'D.Joao Catering',
  'quintas_eventos',
  'pendente',
  'Maria',
  'djoao-catering6@hotmail.com',
  '[]'::jsonb,
  '{}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  'Trabalham com a Quinta do Vizo',
  '[{"id":"1823b17c-8cc0-4e48-ada4-507c5240e716","date":"2026-01-29T19:19:34.000Z","channel":"email","summary":"30/07 - Mandei mail e fiz o convite para irem ver o site. Ficamos de falar daqui a uns dias","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"d4cc3761-a646-47a0-801e-c45d2729f154","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Hotel Coimbra Affiliated by Meliá',
  'quintas_eventos',
  'pendente',
  NULL,
  'reservas.coimbra@melia.com',
  '[{"label":null,"number":"239480800"}]'::jsonb,
  '{}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  'Não falei com o responsável, estava de férias',
  '[]'::jsonb,
  '[{"id":"86f80253-c2c6-4cf6-9b91-c932aa5c4d3e","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Terraço da Alta',
  'quintas_eventos',
  'pendente',
  'Responsável Narito - Atendeu Sara',
  'reservas@terracoalta.com',
  '[{"label":null,"number":"927318578"}]'::jsonb,
  '{}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"44986955-674e-421d-8e46-93503b86b95b","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Passaporte Coimbra',
  'quintas_eventos',
  'pendente',
  'Responsável Alvaro | Atendeu Sofia',
  'geral@passaporte.pt',
  '[{"label":null,"number":"239600138"}]'::jsonb,
  '{}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"79b3a738-2f92-4fcf-91ac-667ace26fd00","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Quinta de São Pedro da Pousada',
  'quintas_eventos',
  'pendente',
  'Dr. Américo Pires',
  'geral@quintadesaopedro.pt',
  '[{"label":null,"number":"239827079"}]'::jsonb,
  '{}'::text[],
  'Cernache, Portugal',
  'a_confirmar',
  'Não falei com o responsável',
  '[{"id":"ce59db58-2e38-4e56-abf3-734890ee85cf","date":"2026-01-29T19:19:44.000Z","channel":"email","summary":"30/07/2025 - falei com a recepção e disse que o advogado Dr. Américo está de férias e só volta em setembro. Mandei mail sem grande esperanças até conseguir falar com ele.","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"0b8c4095-02c0-457c-8b60-00d7ce87f860","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Palácio Quinta da Portela',
  'quintas_eventos',
  'pendente',
  NULL,
  NULL,
  '[{"label":null,"number":"239055401"}]'::jsonb,
  '{}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  'Ligar 31/07 de manhã. Falei ontem mas estava numa reunião',
  '[]'::jsonb,
  '[{"id":"98bbedf2-0fc5-41a0-a883-64b323aac614","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Palácio São Silvestre',
  'quintas_eventos',
  'pendente',
  'Atendeu Joana/Telma - Responsável Marta Mendes',
  'direcao@palaciosaosilvestre.pt',
  '[{"label":null,"number":"239490050"}]'::jsonb,
  '{}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  '29/07 - mandei mail à Drª Marta',
  '[]'::jsonb,
  '[{"id":"0b16a2b2-07c4-40f1-88df-4daf24246d12","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Quinta da Torre de Bera',
  'quintas_eventos',
  'pendente',
  'Carolina',
  'contacto@torredebera.pt',
  '[{"label":null,"number":"962701054"}]'::jsonb,
  '{}'::text[],
  'Almalaguês, Portugal',
  'a_confirmar',
  'Ficou de falar com a irmã e ligar',
  '[{"id":"fdf2a32a-3355-48d8-b8b4-c7d5944642f2","date":"2026-01-29T19:19:53.000Z","channel":"telefone","summary":"21/07/2025 - Contactado por chamada, atendeu","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"66bfba79-b199-42e6-9944-9a56d11b85d6","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.018Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Adega rama',
  'quintas_eventos',
  'pendente',
  'Sr. João Paulo',
  'pauloramaeventos@gmail.com',
  '[{"label":null,"number":"239914278"}]'::jsonb,
  '{}'::text[],
  'Mealhada, Portugal',
  'a_confirmar',
  'ligar amanhã 05/08',
  '[{"id":"9434e9fb-5480-4bf5-a345-d0cbb3da83f5","date":"2026-01-29T19:19:59.000Z","channel":"telefone","summary":"21/07/2025 - Contactado por chamada, atendeu","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"ff7f170b-aa97-4af5-8be3-89db917f67b1","title":"A aguardar resposta","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.019Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Valle de Canas',
  'quintas_eventos',
  'confirmado',
  'Paulo Baptista',
  'geral@valledecanas.com',
  '[{"label":null,"number":"966126361"}]'::jsonb,
  '{}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"085f5c4b-1b8f-4e7b-9aac-12f3e4aa72d8","date":"2026-01-29T19:20:08.000Z","channel":"outro","summary":"29/07/2025 - É um homem. Disse que queria a parceria. Gostava de ter uma exemplar para mostrar.","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Quinta de São José',
  'quintas_eventos',
  'confirmado',
  'Ana Bento',
  'geral.quintasaojose@gmail.com',
  '[{"label":null,"number":"912968025"}]'::jsonb,
  '{}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  NULL,
  '[{"id":"c3546f8a-2b52-48c8-a2f4-21febfd441dc","date":"2026-01-29T19:20:15.000Z","channel":"outro","summary":"29/07/2025 - É uma mulher. Disse que queria a parceira. Já fez uma recomendação. Era uma senhora simpática.","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Quinta das Lágrimas, an SLH Hotel',
  'quintas_eventos',
  'confirmado',
  'Monica Tiago',
  'eventos@quintadaslagrimas.pt',
  '[{"label":null,"number":"239802380"}]'::jsonb,
  '{}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Quinta do Sobreiro',
  'quintas_eventos',
  'confirmado',
  NULL,
  'anapaula@quintasobreiro.com',
  '[{"label":null,"number":"966011923"}]'::jsonb,
  '{}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  'Ficou de ver o site',
  '[]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Convento de Sandelgas',
  'quintas_eventos',
  'rejeitado',
  NULL,
  'conventodesandelgas@gmail.com',
  '[{"label":null,"number":"963841054"}]'::jsonb,
  '{}'::text[],
  'Coimbra, Portugal',
  'a_confirmar',
  'Tentou negociar margem de preço de comissionamento "Eu sei os custos associados"',
  '[{"id":"8a30e269-8461-4b4b-8e9f-4ec7194e7a29","date":"2026-01-29T19:20:26.000Z","channel":"outro","summary":"29/07 - Falei novamnete com ela, pediu para mandar mail com outro assunto e depois de ver ligava |","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

-- ── OUTROS (5 parceiros) ──

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Karine',
  'outros',
  'por_contactar',
  NULL,
  NULL,
  '[]'::jsonb,
  '{}'::text[],
  'Cantanhede, Portugal',
  'a_confirmar',
  'Karine',
  '[{"id":"5e1fd0b8-1333-4cda-a521-70d52b3b2ff9","date":"2026-01-29T19:33:26.000Z","channel":"whatsapp","summary":"Noiva Karine contactou-nos por whatsapp e telefonicamente a 11 de agosto de 2025. Estava em cantanhede quando falámos ao telefone, mas o numero dela é dos EUA, deve ser emigrante lá.\n\nDisse-lhe que estvamos com as prensas todas ocupadas e que não podiamos aceitar mais bouquets.\n\nConheceu os nossos serviços \"através da net\"","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[{"id":"101077cb-bfbe-4bb8-b1c6-3f9494777071","title":"Ligar","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.019Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Vanessa Ribeiro',
  'outros',
  'por_contactar',
  NULL,
  'tem no blog um artigo sobreo oque fazer com o bouquet, onde diz que nao gosta dos quadros',
  '[]'::jsonb,
  '{"https://www.instagram.com/anoivasoueu_oficial/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Behind the Vows',
  'outros',
  'por_contactar',
  NULL,
  NULL,
  '[]'::jsonb,
  '{"https://btvweddings.wixsite.com/behind-the-vows"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Simplesmente Branco',
  'outros',
  'pendente',
  '930563680',
  '"No nosso Blog realizamos uma curadoria, que vai de encontro à nossa reconhecida “Linha Simplesmente Branco”."
Formulário de Candidatura para ser fornecedor recomendado

https://www.simplesmentebranco.com/anuncie-connosco/',
  '[]'::jsonb,
  '{"https://www.simplesmentebranco.com/fornecedores-seleccionados-simplesmente-branco/"}'::text[],
  NULL,
  'a_confirmar',
  NULL,
  '[]'::jsonb,
  '[{"id":"76574293-f637-4064-a9c7-f4684cbca7d3","title":"Enviar email/form","assignee_email":null,"due_date":null,"done":false,"done_at":null,"done_by":null,"created_at":"2026-05-08T10:03:10.019Z","created_by":null}]'::jsonb
);

INSERT INTO partners (name, category, status, contact_person, email, phones, links, location_label, accepts_commission, notes, interactions, actions) VALUES (
  'Paloma Fontini',
  'outros',
  'aceite',
  '935528440',
  'fotógrafa',
  '[]'::jsonb,
  '{}'::text[],
  NULL,
  'nao',
  'Paloma',
  '[{"id":"38ad940b-bc03-4465-8f11-a64ac7db648d","date":"2026-01-29T12:15:51.000Z","channel":"whatsapp","summary":"Dia 29-01-26 falei com a Paloma. Disse estar em Portugal Há 3anos. Falou também com uma florista para fazer uma parceria e também vai falar das FBR a ela... Procura um casal para editar um vídeo - podiam candidatar-se :) - Disse-lhe que mandava as apresentações para o whatsapp.","by":"info+mj@floresabeirario.pt"},{"id":"2334e589-95a3-4a5e-9b86-3eab639fb68b","date":"2026-01-29T18:57:28.000Z","channel":"whatsapp","summary":"whatsapp enviado","by":"info+mj@floresabeirario.pt"},{"id":"92f57f29-0475-4fcb-8fb6-37d37b4467c8","date":"2026-01-29T18:58:29.000Z","channel":"outro","summary":"meteu like em todas as publicações no instagram. Metemos like de volta","by":"info+mj@floresabeirario.pt"},{"id":"f823319f-b20d-4c82-9ac8-7b4fea7366d8","date":"2026-01-29T19:40:43.000Z","channel":"whatsapp","summary":"Pediu logo o site por whatsapp (para a ana Baião) e respondeu \"lindissimo trabalho, uma arte\"","by":"info+mj@floresabeirario.pt"}]'::jsonb,
  '[]'::jsonb
);

COMMIT;

-- Totais: 171 parceiros · 232 interações · 136 acções pendentes
-- Telemóveis adicionais extraídos das notas: 18