<main>
    <section class="py-16">
        <div class="container mx-auto px-4">
            <div class="flex justify-center mb-12">
                <div class="w-full max-w-2xl text-center">
                    <p class="text-blue-600 uppercase font-semibold mb-3">Frequent Questions</p>
                    <h1 class="text-3xl font-bold">Frequently Asked Questions</h1>
                </div>
            </div>
            <div class="flex justify-center">
                <div class="w-full max-w-4xl space-y-4">
                    @if ($faqs->isNotEmpty())
                        @php $x = 1; @endphp
                        @foreach ($faqs as $faq)
                            <div class="border rounded-lg overflow-hidden">
                                <button type="button" class="w-full text-left px-6 py-4 bg-gray-100 hover:bg-gray-200 transition flex justify-between items-center faq-toggle" data-target="faq-{{ $x }}">
                                    <span class="text-lg text-gray-700 font-medium">{{ $faq->question }}</span>
                                    <svg class="w-5 h-5 transform transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                                    </svg>
                                </button>
                                <div id="faq-{{ $x }}" class="hidden px-6 pb-4 text-gray-700 faq-answer">
                                    {!! $faq->answer !!}
                                </div>
                            </div>
                            @php $x++; @endphp
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
    </section>
</main>

<!-- FAQ Toggle Script -->
<script>
    document.querySelectorAll('.faq-toggle').forEach(button => {
        button.addEventListener('click', () => {
            const targetId = button.getAttribute('data-target');
            const content = document.getElementById(targetId);
            const icon = button.querySelector('svg');

            // Toggle visibility
            content.classList.toggle('hidden');

            // Rotate icon
            icon.classList.toggle('rotate-180');
        });
    });
</script>