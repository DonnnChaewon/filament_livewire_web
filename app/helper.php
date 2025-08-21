<?php

use App\Models\Article;

function getArticles() {
    $articles = Article::orderBy('title', 'ASC')->where('status', 1)->get();
    return Article::where('status', 1)->latest()->take(4)->get();
}

?>