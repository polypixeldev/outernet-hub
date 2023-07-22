<script>
  import HeaderCard from '../../components/header_card.svelte';
  export let announcements;
</script>

<div class="grid grid-cols-1 gap-2 p-2 md:grid-cols-2">
  <HeaderCard />
  <div
    class="z-20 my-2 flex w-full flex-row items-center justify-center rounded-3xl bg-white px-2 py-4 dark:bg-zinc-800"
  >
    <img
      src="/icons/announcement.svg"
      alt="Announcement"
      class="h-8 w-8 md:h-10 md:w-10 lg:h-12 lg:w-12"
    />
    <p
      class="ml-2 font-inter text-3xl font-black text-red-600 md:text-4xl lg:text-5xl"
    >
      Announcements
    </p>
  </div>
</div>
<div class="flex w-full flex-col items-center">
  {#each announcements as announcement}
    <div
      class="z-20 my-2 flex w-5/6 flex-col rounded-3xl bg-white p-4 pl-5 font-inter text-lg text-black dark:bg-zinc-800 dark:text-white md:text-xl lg:text-2xl"
    >
      <div class="flex items-center">
        <p class="font-extrabold">
          {announcement.sender.split(':')[0].slice(1)}
        </p>
        <p class="pl-2 font-semibold">
          {new Date(announcement.timestamp).toLocaleString()}
        </p>
      </div>
      <p class="font-semibold">{announcement.body}</p>
    </div>
  {/each}
</div>
