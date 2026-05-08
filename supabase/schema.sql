create extension if not exists pgcrypto;

create table if not exists public.parties (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default timezone('utc', now()),
  players jsonb not null,
  scores jsonb not null,
  history jsonb not null default '[]'::jsonb,
  winner text not null default '',
  finished boolean not null default false
);

alter table public.parties enable row level security;

grant usage on schema public to anon, authenticated;
grant select, insert on table public.parties to anon, authenticated;

drop policy if exists "Anyone can read finished parties" on public.parties;
create policy "Anyone can read finished parties"
on public.parties
for select
to anon, authenticated
using (finished = true);

drop policy if exists "Anyone can insert parties" on public.parties;
create policy "Anyone can insert parties"
on public.parties
for insert
to anon, authenticated
with check (true);
