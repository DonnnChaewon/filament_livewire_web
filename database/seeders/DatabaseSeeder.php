<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Article;
use App\Models\Category;
use App\Models\Faq;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder {
    // Seed the application's database.
    public function run(): void {
        User::create([
            'name' => 'Orang Keren',
            'email' => 'orangkeren@sekali.com',
            'password' => Hash::make('orangkeren')
        ]);

        Category::create([
            'name' => 'Sports',
            'slug' => 'sports',
            'status' => 1
        ]);

        Article::create([
            'title' => 'Cristiano Ronaldo',
            'category_id' => 1,
            'content' => 'Cristiano Ronaldo dos Santos Aveiro, born 5 February 1985, is a Portuguese professional footballer who plays as a forward for and captains both Saudi Pro League club Al-Nassr and the Portugal national team.',
            'status' => 1
        ]);

        Faq::create([
            'question' => 'Which Portuguese footballer is called Mr. Champions League?',
            'answer' => 'Cristiano Ronaldo',
            'status' => 1
        ]);
    }
}