<script>
  import HeaderCard from '../../components/header_card.svelte';
  export let guilds;

  const colors = [
    'greenish',
    'purple',
    'brownish',
    'lightblue',
    'green',
    'yellow',
    'red-600',
  ];
</script>

<div class="grid grid-cols-1 gap-2 p-2 md:grid-cols-2">
  <HeaderCard />
  <div
    class="z-20 my-2 flex w-full flex-row items-center justify-center rounded-3xl bg-white px-2 py-4 dark:bg-zinc-800"
  >
    <img
      src="/icons/guilds.svg"
      alt="Guilds"
      class="h-8 w-8 md:h-10 md:w-10 lg:h-12 lg:w-12"
    />
    <p
      class="ml-2 font-inter text-3xl font-black text-slate-600 md:text-4xl lg:text-5xl"
    >
      Guilds
    </p>
  </div>
</div>
<div class="mx-2 flex w-full flex-row flex-wrap items-center justify-center">
  {#each guilds as guild}
    <a
      class="z-20 m-2 rounded-3xl bg-white p-4 dark:bg-zinc-800"
      href={guild.website}
    >
      <p
        class={`font-inter text-3xl font-black text-${
          colors[Math.floor(Math.random() * (colors.length - 1))]
        } md:text-4xl lg:text-5xl`}
      >
        {guild.name}
      </p>
    </a>
  {/each}
</div>
