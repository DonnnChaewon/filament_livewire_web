<?php

namespace App\Livewire;

use App\Models\Article;
use App\Models\Category;
use Livewire\Attributes\Url;
use Livewire\Component;

class ShowArticles extends Component {
    #[Url]
    public $categorySlug = null;

    public function render() {
        $categories = Category::all();

        if(!empty($this->categorySlug)) {
            $category = Category::where('slug', $this->categorySlug)->first();
            if(empty($category)) abort(404);
            $articles = Article::orderBy('created_at', 'DESC')->where('status', 1)->where('category_id', $category->id)->paginate(4);
        } else $articles = Article::orderBy('created_at', 'DESC')->where('status', 1)->paginate(4);

        $latestArticles = Article::orderBy('created_at', 'DESC')->where('status', 1)->get()->take(4);
        $lastUpdatedArticles = Article::orderBy('updated_at', 'DESC')->where('status', 1)->get()->take(4);

        $categories = Category::all();

        return view('livewire.show-articles', [
            'articles' => $articles,
            'categories' => $categories,
            'latestArticles' => $latestArticles,
            'lastUpdatedArticles' => $lastUpdatedArticles
        ]);
    }
}