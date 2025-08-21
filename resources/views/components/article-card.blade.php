<div class="w-full md:w-1/2 lg:w-1/3 px-4 mb-8">
    <a class="text-black hover:text-blue-600 block" wire:navigate href="{{ route('articleDetail', $article->id) }}">
        <div class="p-6 border rounded-lg shadow hover:shadow-lg transition">
            <h3 class="text-xl font-semibold mb-3 hover:text-blue-600php artisan serve">{{ $article->title }}</h3>
            <img loading="lazy" decoding="async" src="{{ asset('storage/'.$article->image) }}" class="w-full h-50 object-cover">
            @php
                preg_match('/<p>(.*?)<\/p>/', $article->content, $matches);
            @endphp
            
            <p class="text-black mb-0">
                {!! $matches[1] ?? Str::limit(strip_tags($article->content), 100) !!}
            </p>
        </div>
    </a>
</div>