<script>
  import HeaderCard from '../../components/header_card.svelte';
  export let upcoming_workshops;
  export let past_workshops;
</script>

<div class="grid grid-cols-1 gap-2 p-2 md:grid-cols-2">
  <HeaderCard />
  <div
    class="z-20 my-2 flex w-full flex-row items-center justify-center rounded-3xl bg-white px-2 py-4 dark:bg-zinc-800"
  >
    <img
      src="/icons/workshops.svg"
      alt="Workshops"
      class="h-8 w-8 md:h-10 md:w-10 lg:h-12 lg:w-12"
    />
    <p
      class="ml-2 font-inter text-3xl font-black text-yellow md:text-4xl lg:text-5xl"
    >
      Workshops
    </p>
  </div>
</div>
<div
  class="relative z-20 m-2 flex w-full flex-col rounded-3xl bg-white p-4 pl-5 text-center font-inter text-lg text-black dark:bg-zinc-800 dark:text-white md:text-xl lg:text-2xl"
>
  <p class="font-semibold">
    Workshops are a place where you can learn something new, and come out with
    something of your own!
  </p>
</div>
<div class="my-4 flex w-full flex-col items-center">
  {#each upcoming_workshops as workshop}
    <div
      class="z-20 my-2 flex w-5/6 flex-col rounded-3xl bg-white p-4 pl-5 font-inter text-lg text-black dark:bg-zinc-800 dark:text-white md:text-xl lg:text-2xl"
    >
      <p>
        <span class="font-extrabold">{workshop.title}</span>
        with
        <span class="font-extrabold">{workshop.person}</span>!
      </p>
      <p>
        <span class="font-bold"
          >{new Date(workshop.datetime).toLocaleString()}</span
        >
        in
        <span class="font-bold">{workshop.location}</span>
      </p>
      <p>&nbsp;</p>
      <p>
        {workshop.description}
      </p>
    </div>
  {/each}
  <div
    class="relative z-20 my-3 h-2 w-5/6 rounded-lg bg-gray-400 dark:bg-gray-600"
  />
  {#each past_workshops as workshop}
    <div
      class="z-20 my-2 flex w-5/6 flex-col rounded-3xl bg-white p-4 pl-5 font-inter text-lg text-black dark:bg-zinc-800 dark:text-white md:text-xl lg:text-2xl"
    >
      <p>
        <span class="font-extrabold">{workshop.title}</span>
        with
        <span class="font-extrabold">{workshop.person}</span>!
      </p>
      <p>
        <span class="font-bold"
          >{new Date(workshop.datetime).toLocaleString()}</span
        >
        in
        <span class="font-bold">{workshop.location}</span>
      </p>
      <p>&nbsp;</p>
      <p>
        {workshop.description}
      </p>
    </div>
  {/each}
</div>
