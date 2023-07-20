<script>
  import HeaderCard from '../../components/header_card.svelte';

  const days = [
    ['Friday', 'green'],
    ['Saturday', 'lightblue'],
    ['Sunday', 'yellow'],
    ['Monday', 'red-600'],
  ];
  let dayIdx = 0;

  const times = [
    '7:00 am',
    '8:00 am',
    '9:00 am',
    '10:00 am',
    '11:00 am',
    '12:00 pm',
    '1:00 pm',
    '2:00 pm',
    '3:00 pm',
    '4:00 pm',
    '5:00 pm',
    '6:00 pm',
    '7:00 pm',
    '8:00 pm',
    '9:00 pm',
    '10:00 pm',
    '11:00 pm',
    '12:00 am',
  ];
</script>

<div class="grid grid-cols-1 gap-2 p-2 md:grid-cols-2">
  <HeaderCard />
  <div
    class="z-20 my-2 flex w-full flex-row items-center justify-center rounded-3xl bg-white px-2 py-4 dark:bg-zinc-800"
  >
    <img
      src="/icons/events.svg"
      alt="Events"
      class="h-8 w-8 md:h-10 md:w-10 lg:h-12 lg:w-12"
    />
    <p
      class="ml-2 font-inter text-3xl font-black text-brownish md:text-4xl lg:text-5xl"
    >
      Events
    </p>
  </div>
</div>
<div class="flex items-center justify-center">
  <div
    class="relative z-20 w-5/6 rounded-3xl bg-white px-2 py-4 font-inter text-black dark:bg-zinc-800 dark:text-white"
  >
    <div class="mx-2 flex flex-row items-center justify-between">
      <button
        class={`h-10 w-10 rounded-full text-2xl font-black text-white bg-${days[dayIdx][1]}`}
        on:click={() => {
          dayIdx = dayIdx === 0 ? days.length - 1 : dayIdx - 1;
        }}>&lt;</button
      >
      <p
        class={`text-center text-4xl font-black md:text-5xl lg:text-6xl text-${days[dayIdx][1]}`}
      >
        {days[dayIdx][0]}
      </p>
      <button
        class={`h-10 w-10 rounded-full text-2xl font-black text-white bg-${days[dayIdx][1]}`}
        on:click={() => {
          dayIdx = dayIdx === days.length - 1 ? 0 : dayIdx + 1;
        }}>&gt;</button
      >
    </div>
    <ul class="list-bg-none my-2">
      {#each times as time}
        <li
          class="relative h-9 before:absolute before:bottom-0 before:left-[5em] before:top-0 before:w-[1px] before:bg-gray-300 after:absolute after:bottom-4 after:left-[5em] after:right-1 after:h-[1px] after:bg-gray-300 first:before:top-1/2 last:before:bottom-1/2"
        >
          <p class="inline-block align-sub">{time}</p>
        </li>
        <li
          class="relative h-9 before:absolute before:bottom-0 before:left-[5em] before:top-0 before:w-[1px] before:bg-gray-300 after:absolute after:bottom-4 after:left-[5em] after:right-1 after:h-[1px] after:bg-gray-300 first:before:top-1/2 last:before:bottom-1/2"
        />
      {/each}
    </ul>
  </div>
</div>
