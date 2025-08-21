<main>
    <div class="py-16">
        <div class="container mx-auto px-4">
            <div class="flex justify-center">
                <div class="w-full lg:w-10/12">
                    <!-- Article Title & Meta -->
                    <div class="mb-8">
                        <h2 class="text-3xl font-bold mb-4 leading-snug">{{ $article->title }}</h2>
                        <div class="text-gray-600 text-sm flex flex-wrap items-center mb-2">
                            <span>{{ \Carbon\Carbon::parse($article->created_at)->format('d M Y') }}</span>
                            <span class="mx-2">/</span>
                            <span>Category:
                                {{ $article->category_name }}
                            </span>
                        </div>
                    </div>

                    <!-- Article Image -->
                    @if ($article->image != '')
                        <div class="mb-8 text-center">
                            <div class="overflow-hidden">
                                <img loading="lazy" decoding="async" src="{{ asset('storage/'.$article->image) }}" class="mx-auto w-full max-h-[800px] object-cover">
                            </div>
                        </div>
                    @endif

                    <!-- Article Content -->
                    <div class="text-base max-w-none text-black">
                        {!! $article->content !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>