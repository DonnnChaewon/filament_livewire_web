<main>
    <div class="py-16">
        <div class="container mx-auto px-4">
            <div class="flex justify-center">
                <div class="w-full lg:w-10/12">
                    <!-- Article Title & Meta -->
                    <div class="mb-8">
                        <h2 class="text-3xl font-bold mb-4 leading-snug">{{ $article->title }}</h2>
                        <div class="text-gray-600 text-sm flex flex-wrap items-center mb-2">
                            <span>Created at: {{ \Carbon\Carbon::parse($article->created_at)->format('d M Y') }}</span>
                            <span class="mx-2">|</span>
                            <span>Last updated: {{ \Carbon\Carbon::parse($article->updated_at)->format('d M Y') }}</span>
                            <span class="mx-2">|</span>
                            <span>Category: {{ $article->category_name }}
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

                    <!-- Comment Form -->
                    <div class="mt-10">
                        <h3 class="text-xl font-semibold mb-4">Leave a Comment</h3>
                        <form method="POST" action="{{ route('comments.store', $article->id) }}">
                            @csrf
                            <input type="text" name="username" class="w-full border rounded p-3 mb-3" placeholder="Username" required>
                            <textarea name="content" class="w-full border rounded p-3 mb-3" rows="3" placeholder="Write your comment..." required></textarea>
                            <button type="submit" class="bg-cyan-600 text-white px-4 py-2 rounded hover:bg-cyan-700">Post Comment</button>
                        </form>
                    </div>

                    <!-- Comment List -->
                    <div class="mt-8">
                        <h3 class="text-xl font-semibold mb-4">Comments ({{ $article->comments->count() }})</h3>
                        <div class="space-y-4">
                            @foreach ($article->comments as $comment)
                                <div x-data="{ showEdit: false }" class="p-4 border border-black rounded">
                                    <p class="text-gray-800">{{ $comment->content }}</p>
                                    <small class="text-gray-500">
                                        {{ $comment->username }} · {{ $comment->created_at->diffForHumans(['parts' => 4, 'short' => true]) }}
                                    </small>

                                    <!-- Action Buttons -->
                                    <div class="mt-2 space-x-2">
                                        <button @click="showEdit = !showEdit" class="bg-yellow-500 text-white px-2 py-1 rounded text-sm">Edit</button>

                                        <form method="POST" action="{{ route('comments.destroy', $comment->id) }}" class="inline">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="bg-red-600 text-white px-2 py-1 rounded text-sm">Delete</button>
                                        </form>
                                    </div>

                                    <!-- Hidden Edit Form -->
                                    <form method="POST" action="{{ route('comments.update', $comment->id) }}" x-show="showEdit" x-transition class="mt-2">
                                        @csrf
                                        @method('PUT')
                                        <input type="text" name="username" value="{{ $comment->username }}" class="border rounded p-1 text-sm w-full mb-2">
                                        <textarea name="content" class="border rounded p-1 text-sm w-full mb-2">{{ $comment->content }}</textarea>
                                        <button type="submit" class="bg-green-600 text-white px-2 py-1 rounded text-sm">Save</button>
                                        <button type="button" @click="showEdit = false" class="ml-2 text-gray-600 text-sm">Cancel</button>
                                    </form>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>