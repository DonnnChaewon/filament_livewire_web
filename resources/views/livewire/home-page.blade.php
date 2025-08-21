<main>
    <!-- Banner Section -->
    <section class="relative overflow-hidden bg-gray-100 py-16">
        <div class="container mx-auto px-4">
            <div class="flex flex-col lg:flex-row items-center justify-center">
                <div class="w-full lg:w-1/2 mb-10 lg:mb-0">
                    <div class="text-center lg:text-left lg:pr-12">
                        <h1 class="text-4xl font-bold capitalize mb-4">JF2 (Just For Fun)</h1>
                        <p class="text-gray-700 text-lg mb-6">List of various articles that are variable in categories and just for fun.</p>
                        <a wire:navigate href="{{ route('articles') }}" class="inline-flex items-center px-6 py-3 bg-blue-600 text-white rounded hover:bg-blue-700 transition">See More Articles
                            <span class="ml-2 text-sm fas fa-arrow-right"></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Articles Section -->
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4">
            <div class="flex flex-wrap mx-4">
                <!-- Section Title -->
                <div class="w-full md:w-1/2 lg:w-1/3 px-4 mb-8">
                    <div class="pt-4">
                        <h1 class="text-3xl font-bold text-black mb-2">Our Articles</h1>
                        <p class="text-gray-700">This is the list of the top 4 latest articles in this website.</p>
                    </div>
                </div>

                <!-- Dynamic Article Cards -->
                @if($articles->isNotEmpty())
                    @php $x = 1; @endphp
                    @foreach ($articles->take(4) as $article)
                        <x-article-card :article="$article" :x="$x" />
                        @php $x++; @endphp
                    @endforeach
                @endif

                <!-- Section Closing -->
                <div class="w-full md:w-1/2 lg:w-1/3 px-4 mb-8">
                    <div class="pt-4">
                        <h1 class="text-3xl font-bold text-black mb-2">See more articles?</h1>
                        <p class="text-gray-700">Go to the blue button above and then click it.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>