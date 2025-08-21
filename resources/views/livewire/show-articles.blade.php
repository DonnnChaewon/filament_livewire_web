<main>
	<!-- Page Header -->
	<section class="bg-gray-100 py-16">
		<div class="container mx-auto px-4">
			<div class="flex justify-center">
				<div class="w-full md:w-2/3 text-center">
					<h1 class="text-2xl font-semibold text-gray-800 leading-snug">
						Entertainment includes sports, K-Pop, and other subcategories that are just for fun. Doesn't include from movies because it falls to the television category.
					</h1>
				</div>
			</div>
		</div>
	</section>

	<!-- Articles & Sidebar -->
	<section class="py-16">
		<div class="container mx-auto px-4">
			<div class="flex flex-col lg:flex-row gap-12">
				<!-- Main Content -->
				<div class="w-full lg:w-9/12">
					<div class="grid md:grid-cols-2 gap-8">
						@if ($articles->isNotEmpty())
							@foreach ($articles as $article)
								<div data-aos="fade">
									<article class="border rounded-lg overflow-hidden bg-white shadow-sm hover:shadow-md transition">
										@if ($article->image != '')
											<div class="overflow-hidden">
												<img loading="lazy" decoding="async" src="{{ asset('storage/'.$article->image) }}" class="w-full h-60 object-cover">
											</div>
										@endif
										<div class="p-5">
											<p class="text-sm text-gray-500 mb-2">
												{{ \Carbon\Carbon::parse($article->created_at)->format('d M Y') }}
											</p>
											<h2 class="text-lg font-semibold text-gray-800 mb-2">
												<a class="hover:text-cyan-600" href="{{ route('articleDetail', $article->id) }}">
													{{ $article->title }}
												</a>
											</h2>
											<a wire:navigate href="{{ route('articleDetail', $article->id) }}" class="text-cyan-600 font-medium hover:underline" aria-label="Read the full article by clicking here">
												Read More
											</a>
										</div>
									</article>
								</div>
							@endforeach
						@endif

						<!-- Pagination -->
						<div class="col-span-full">
							{{ $articles->links() }}
						</div>
					</div>
				</div>

				<!-- Sidebar -->
				<div class="w-full lg:w-3/12 space-y-10">
					<!-- Categories -->
					<div class="border rounded-lg p-5 bg-white shadow-sm">
						<h5 class="text-lg font-semibold mb-4 border-b pb-2">Categories</h5>
						<ul class="space-y-2">
							@if ($categories->isNotEmpty())
								@foreach ($categories as $category)
									<li>
										<a wire:navigate href="{{ route('articles').'?categorySlug='.$category->slug }}" class="text-gray-700 hover:text-cyan-600 transition">
											{{ $category->name }}
										</a>
									</li>
								@endforeach
							@endif
						</ul>
					</div>

					<!-- Latest Articles -->
					<div class="border rounded-lg p-5 bg-white shadow-sm">
						<h5 class="text-lg font-semibold mb-4 border-b pb-2">Latest Articles</h5>
						@if ($latestArticles->isNotEmpty())
							<ul class="space-y-4">
								@foreach ($latestArticles as $latestArticle)
									<li class="flex items-start gap-4">
										<a wire:navigate href="{{ route('articleDetail', $latestArticle->id) }}" class="flex-shrink-0 w-20 h-16 overflow-hidden rounded">
											@if ($latestArticle->image != '')
												<img loading="lazy" decoding="async" src="{{ asset('storage/'.$latestArticle->image) }}" class="w-full h-full object-cover">
											@endif
										</a>
										<div class="flex-grow">
											<h6 class="text-sm font-medium text-gray-800 leading-snug">
												<a wire:navigate href="{{ route('articleDetail', $latestArticle->id) }}" class="hover:text-cyan-600">
													{{ $latestArticle->title }}
												</a>
											</h6>
											<small class="text-xs text-gray-500">
												{{ \Carbon\Carbon::parse($latestArticle->created_at)->format('d M Y') }}
											</small>
										</div>
									</li>
								@endforeach
							</ul>
						@endif
					</div>
				</div>
			</div>
		</div>
	</section>
</main>