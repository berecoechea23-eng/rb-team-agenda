-- Ejecutar una sola vez en Supabase > SQL Editor
create table if not exists public.agenda (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.agenda enable row level security;

create policy "leer lo propio" on public.agenda
  for select using (auth.uid() = user_id);
create policy "insertar lo propio" on public.agenda
  for insert with check (auth.uid() = user_id);
create policy "actualizar lo propio" on public.agenda
  for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
