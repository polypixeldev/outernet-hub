<div class="grid grid-cols-2 gap-2 p-2">
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
    <div class="z-20 my-2 flex w-full justify-around">
      <div
        class="flex h-36 w-36 flex-col items-start rounded-3xl bg-white p-4 font-inter font-black text-greenish dark:bg-zinc-800"
      >
        <p class="text-4xl">Day</p>
        <p class="text-7xl">{new Date().getDate() - 27}</p>
      </div>
      <div
        class="flex items-center justify-between rounded-3xl bg-white dark:bg-zinc-800"
      >
        <div
          class="flex h-36 w-36 flex-col items-start rounded-3xl bg-white p-4 font-inter font-black text-greenish dark:bg-zinc-800"
        >
          <p class="text-4xl">JUL</p>
          <p class="text-7xl">{new Date().getDate()}</p>
        </div>
        <div
          class="ml-5 flex h-36 w-36 flex-col items-start justify-evenly rounded-3xl bg-white p-4 font-inter text-6xl font-black text-greenish dark:bg-zinc-800"
        >
          <p>{new Date().getHours()}:</p>
          <p>{new Date().getMinutes()}</p>
        </div>
      </div>
    </div>
  </div>
</div>
