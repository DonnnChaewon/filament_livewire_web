<main>
	<!-- Contact Section -->
	<section class="py-16">
		<div class="container mx-auto px-4">
			<div class="flex flex-col items-center justify-center mb-12">
				<div class="text-center max-w-xl">
					<p class="text-blue-600 uppercase font-bold mb-3">Contact With Us</p>
					<h1 class="text-2xl font-semibold mb-2">Let’s get connected</h1>
					<p class="text-gray-600">Connect with each other is important to increase your network.</p>
				</div>
			</div>

			<div class="bg-white rounded shadow p-8 max-w-5xl mx-auto">
				@if (session('success'))
					<div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded mb-6">
						{{ session('success') }}
					</div>
				@endif

				<div class="grid grid-cols-1 lg:grid-cols-2 gap-8">
					<!-- Left Column - Form -->
					<div>
						<h4 class="text-lg font-semibold mb-6">Leave us a Message</h4>
						<form wire:submit="submit">
							<div class="mb-5">
								<label for="name" class="block mb-2 font-medium">Full Name</label>
								<input wire:model="name" type="text" id="name" name="name" class="w-full border border-gray-300 rounded px-4 py-2 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 @error('name') border-red-500 @enderror">
								@error('name')
									<p class="text-red-500 text-sm mt-1">{{ $message }}</p>
								@enderror
							</div>

							<div class="mb-5">
								<label for="email" class="block mb-2 font-medium">Email Address</label>
								<input wire:model="email" type="email" id="email" name="email" class="w-full border border-gray-300 rounded px-4 py-2 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 @error('email') border-red-500 @enderror">
								@error('email')
									<p class="text-red-500 text-sm mt-1">{{ $message }}</p>
								@enderror
							</div>

							<div class="mb-5">
								<label for="message" class="block mb-2 font-medium">Message</label>
								<textarea wire:model="message" id="message" name="message" rows="4" class="w-full border border-gray-300 rounded px-4 py-2 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500"></textarea>
							</div>

							<button type="submit" class="w-full bg-blue-600 text-white py-3 rounded hover:bg-blue-700 transition duration-200">
								Send Message
							</button>
						</form>
					</div>

					<!-- Right Column - Contact Info -->
					<div class="mt-10 lg:mt-0 space-y-8">
						<div>
							<h4 class="text-lg font-semibold mb-2">Still Have Questions?</h4>
							<p class="text-gray-700">Call Us We Will Be Happy To Help</p>
							<p class="text-gray-700 block mt-1">+1 1234567890</p>
							<p class="text-gray-600 mt-1">Everyday<br>Everytime</p>
						</div>
						<div>
							<h4 class="text-lg font-semibold mb-2">White House</h4>
							<p class="text-gray-700">1600 Pennsylvania Avenue NW<br>Washington, DC</p>
						</div>
						<div>
							<h4 class="text-lg font-semibold mb-2">White House</h4>
							<p class="text-gray-700">1600 Pennsylvania Avenue NW<br>Washington, DC</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</main>