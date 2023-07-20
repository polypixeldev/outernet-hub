<script>
  const date = new Date();
</script>

<div class="grid grid-cols-1 gap-2 p-2 md:grid-cols-2">
  <div class="flex w-full flex-col items-center justify-start">
    <div
      class="z-20 my-2 flex w-full flex-row justify-center rounded-3xl bg-white px-2 py-4 dark:bg-zinc-800"
    >
      <img
        src="/icons/wave.svg"
        alt="Wave"
        class="h-10 w-10 md:h-12 md:w-12 lg:h-14 lg:w-14"
      />
      <h1
        class="ml-2 font-inter text-4xl font-black text-amber-700 md:text-5xl lg:text-6xl"
      >
        hub.outernet
      </h1>
    </div>
    <div class="z-20 my-2 flex w-full justify-evenly">
      <div
        class="flex h-28 w-28 flex-col items-start rounded-3xl bg-white p-4 font-inter font-black text-greenish dark:bg-zinc-800 md:h-32 md:w-32 lg:h-36 lg:w-36"
      >
        <p class="text-2xl md:text-3xl lg:text-4xl">Day</p>
        <p class="text-5xl md:text-6xl lg:text-7xl">
          {date.getDate() - 27}
        </p>
      </div>
      <div
        class="flex items-center justify-between rounded-3xl bg-white dark:bg-zinc-800"
      >
        <div
          class="flex h-28 w-28 flex-col items-start rounded-3xl bg-white p-4 font-inter font-black text-greenish dark:bg-zinc-800 md:h-32 md:w-32 lg:h-36 lg:w-36"
        >
          <p class="text-2xl md:text-3xl lg:text-4xl">JUL</p>
          <p class="text-5xl md:text-6xl lg:text-7xl">{date.getDate()}</p>
        </div>
        <div
          class="ml-5 flex h-28 w-28 flex-col items-start justify-evenly rounded-3xl bg-white p-4 font-inter text-4xl font-black text-greenish dark:bg-zinc-800 md:h-32 md:w-32 md:text-5xl lg:h-36 lg:w-36 lg:text-6xl"
        >
          <p>{date.getHours()}:</p>
          <p>
            {date.getMinutes() < 10
              ? `0${date.getMinutes()}`
              : date.getMinutes()}
          </p>
        </div>
      </div>
    </div>
    <div
      class="z-20 my-2 flex w-full flex-col rounded-3xl bg-white px-2 py-4 dark:bg-zinc-800"
    >
      <div class="flex w-full items-center justify-start pb-2 pl-2">
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
      <div
        class="my-2 flex flex-col pl-5 font-inter text-lg text-black dark:text-white md:text-xl lg:text-2xl"
      >
        <div class="flex items-center">
          <p class="font-extrabold">Sam Poder</p>
          <p class="pl-2 font-semibold">10:30</p>
        </div>
        <p class="font-semibold">I have an announcement to make!</p>
      </div>
      <div
        class="my-2 flex flex-col pl-5 font-inter text-lg text-black dark:text-white md:text-xl lg:text-2xl"
      >
        <div class="flex items-center">
          <p class="font-extrabold">Sam Poder</p>
          <p class="pl-2 font-semibold">10:30</p>
        </div>
        <p class="font-semibold">I have an announcement to make!</p>
      </div>
    </div>
    <div
      class="z-20 my-2 flex w-full flex-row items-center rounded-3xl bg-white p-4 dark:bg-zinc-800"
    >
      <img
        src="/icons/chat.svg"
        alt="Chat bubble"
        class="h-8 w-8 md:h-10 md:w-10 lg:h-12 lg:w-12"
      />
      <p
        class="ml-2 font-inter text-3xl font-black text-lightblue md:text-4xl lg:text-5xl"
      >
        Chat
      </p>
    </div>
    <div
      class="z-20 my-2 flex w-full flex-row items-center rounded-3xl bg-white p-4 dark:bg-zinc-800"
    >
      <img
        src="/icons/guilds.svg"
        alt="Star"
        class="h-8 w-8 md:h-10 md:w-10 lg:h-12 lg:w-12"
      />
      <p
        class="ml-2 font-inter text-3xl font-black text-slate-600 md:text-4xl lg:text-5xl"
      >
        Guilds
      </p>
    </div>
    <div
      class="z-20 my-2 flex w-full flex-row items-center rounded-3xl bg-white p-4 dark:bg-zinc-800"
    >
      <img
        src="/icons/scrapbook.svg"
        alt="Code icon"
        class="h-8 w-8 md:h-10 md:w-10 lg:h-12 lg:w-12"
      />
      <p
        class="ml-2 font-inter text-3xl font-black text-green md:text-4xl lg:text-5xl"
      >
        Scrapbook
      </p>
    </div>
    <div
      class="z-20 my-2 flex w-full flex-row items-center rounded-3xl bg-white p-4 dark:bg-zinc-800"
    >
      <img
        src="/icons/workshops.svg"
        alt="Code event icon"
        class="h-8 w-8 md:h-10 md:w-10 lg:h-12 lg:w-12"
      />
      <p
        class="ml-2 font-inter text-3xl font-black text-yellow md:text-4xl lg:text-5xl"
      >
        Workshops
      </p>
    </div>
  </div>
  <div class="flex w-full flex-col items-center justify-start">
    <div
      class="z-20 my-2 flex w-full flex-col rounded-3xl bg-white px-2 py-4 dark:bg-zinc-800"
    >
      <div class="flex w-full items-center justify-start pb-2 pl-2">
        <img
          src="/icons/pin.svg"
          alt="Pin"
          class="h-8 w-8 md:h-10 md:w-10 lg:h-12 lg:w-12"
        />
        <p
          class="ml-2 font-inter text-3xl font-black text-purple md:text-4xl lg:text-5xl"
        >
          Map
        </p>
      </div>
    </div>
    <div
      class="z-20 my-2 flex w-full flex-col rounded-3xl bg-white px-2 py-4 dark:bg-zinc-800"
    >
      <div class="flex w-full items-center justify-start pb-2 pl-2">
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
      <div
        class="my-2 flex flex-col pl-5 font-inter text-lg text-black dark:text-white md:text-xl lg:text-2xl"
      >
        <div class="flex items-center">
          <p class="font-extrabold">Breakfast!</p>
          <p class="pl-2 font-semibold">10:30 @ Faith</p>
        </div>
        <p class="font-semibold">Today's breakfast is pancakes and waffles!</p>
      </div>
      <div
        class="my-2 flex flex-col pl-5 font-inter text-lg text-black dark:text-white md:text-xl lg:text-2xl"
      >
        <div class="flex items-center">
          <p class="font-extrabold">Breakfast!</p>
          <p class="pl-2 font-semibold">10:30 @ Faith</p>
        </div>
        <p class="font-semibold">Today's breakfast is pancakes and waffles!</p>
      </div>
      <div
        class="my-2 flex flex-col pl-5 font-inter text-lg text-black dark:text-white md:text-xl lg:text-2xl"
      >
        <div class="flex items-center">
          <p class="font-extrabold">Breakfast!</p>
          <p class="pl-2 font-semibold">10:30 @ Faith</p>
        </div>
        <p class="font-semibold">Today's breakfast is pancakes and waffles!</p>
      </div>
    </div>
  </div>
</div>
