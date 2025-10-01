<?php

use App\Livewire\ArticleDetail;
use App\Livewire\ShowArticles;
use App\Livewire\ContactUs;
use App\Livewire\ShowFaqs;
use App\Livewire\HomePage;
use App\Livewire\AboutUs;
use App\Livewire\TermsConditions;
use App\Livewire\PrivacyPolicy;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CommentController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', HomePage::class)->name('home');
Route::get('/article', ShowArticles::class)->name('articles');
Route::get('/article/{id}', ArticleDetail::class)->name('articleDetail');
Route::get('/faqs', ShowFaqs::class)->name('faqs');
Route::get('/contactus', ContactUs::class)->name('contactus');
Route::get('/aboutus', AboutUs::class)->name('aboutus');
Route::get('/termsconditions', TermsConditions::class)->name('termsconditions');
Route::get('/privacypolicy', PrivacyPolicy::class)->name('privacypolicy');
Route::post('/articles/{id}/comments', [CommentController::class, 'store'])->name('comments.store');
Route::put('/comments/{comment}', [CommentController::class, 'update'])->name('comments.update');
Route::delete('/comments/{comment}', [CommentController::class, 'destroy'])->name('comments.destroy');