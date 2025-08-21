<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <title>{{ $title ?? 'Filament & Livewire Web' }}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5">
    <meta name="description" content="This is meta description">
    <meta name="author" content="Themefisher">

    <!-- Tailwind CDN -->
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- Custom Style -->
    <link rel="stylesheet" href="{{ asset('/front/css/style.css') }}">
    @livewireStyles
</head>

<body class="font-sans antialiased">

    <!-- Navigation -->
    <header class="bg-gray-600">
        <nav class="container mx-auto flex flex-wrap items-center justify-between py-4 px-4">
            <a wire:navigate href="{{ route('home') }}" class="block">
                <img src="{{ asset('/images/logo.png') }}" class="w-30 h-20">
            </a>

            <button id="navToggle" class="md:hidden text-gray-700 focus:outline-none">
                <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                     <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
                </svg>
            </button>

            <div id="navMenu" class="hidden md:flex md:items-center md:space-x-6 mt-4 md:mt-0 w-full md:w-auto">
                <ul class="flex flex-col md:flex-row md:space-x-6 w-full md:w-auto text-center md:text-left">
                    <li><a wire:navigate href="{{ route('home') }}" class="block py-2 text-gray-100 hover:text-cyan-500">Home</a></li>
                    <li><a wire:navigate href="{{ route('aboutus') }}" class="block py-2 text-gray-100 hover:text-cyan-500">About Us</a></li>
                    <li><a wire:navigate href="{{ route('articles') }}" class="block py-2 text-gray-100 hover:text-cyan-500">Articles</a></li>
                    <li><a wire:navigate href="{{ route('faqs') }}" class="block py-2 text-gray-100 hover:text-cyan-500">FAQ</a></li>
                    <li><a wire:navigate href="{{ route('contactus') }}" class="block py-2 px-4 border border-cyan-500 text-cyan-500 rounded  hover:bg-cyan-500 hover:text-white transition">Contact Us</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <!-- Content Slot -->
    {{ $slot }}

    <!-- Footer -->
    <footer class="bg-gray-600 py-12 mt-10">
        <div class="container mx-auto px-4">
            <div class="flex flex-wrap justify-between gap-8">
                <div class="w-full sm:w-1/2 md:w-1/4">
                    <h5 class="text-lg font-semibold text-cyan-500 mb-4">Latest Articles</h5>
                    <ul>
                        @foreach (getArticles() as $article)
                            <li class="mb-2">
                                <a wire:navigate href="{{ route('articleDetail', $article->id) }}" class="text-gray-100 hover:text-cyan-500">{{ $article->title }}</a>
                            </li>
                        @endforeach
                    </ul>
                </div>
                <div class="w-full sm:w-1/2 md:w-1/4">
                    <h5 class="text-lg font-semibold text-cyan-500 mb-4">Quick Links</h5>
                    <ul>
                        <li class="mb-2"><a wire:navigate href="{{ route('aboutus') }}" class="text-gray-100 hover:text-cyan-500">About Us</a></li>
                        <li class="mb-2"><a wire:navigate href="{{ route('contactus') }}" class="text-gray-100 hover:text-cyan-500">Contact Us</a></li>
                        <li class="mb-2"><a wire:navigate href="{{ route('articles') }}" class="text-gray-100 hover:text-cyan-500">Articles</a></li>
                    </ul>
                </div>
                <div class="w-full sm:w-1/2 md:w-1/4">
                    <h5 class="text-lg font-semibold text-cyan-500 mb-4">Other Links</h5>
                    <ul>
                        <li class="mb-2"><a wire:navigate href="{{ route('privacypolicy') }}" class="text-gray-100 hover:text-cyan-500">Privacy Policy</a></li>
                        <li class="mb-2"><a wire:navigate href="{{ route('termsconditions') }}" class="text-gray-100 hover:text-cyan-500">Terms & Conditions</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

    <!-- JS for nav toggle -->
    <script>
        const navToggle = document.getElementById('navToggle');
        const navMenu = document.getElementById('navMenu');

        navToggle.addEventListener('click', () => {
            navMenu.classList.toggle('hidden');
        });
    </script>

    <!-- jQuery Plugin (optional, if still needed for other scripts) -->
    <script src="{{ asset('/front/plugins/jquery/jquery.min.js') }}"></script>

    <!-- Other Scripts -->
    <script src="{{ asset('/front/js/script.js') }}"></script>
    @livewireScripts
</body>

</html>