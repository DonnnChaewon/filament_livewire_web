<?php

namespace App\Livewire;

use App\Models\Article;
use Livewire\Component;

class ArticleDetail extends Component {
    public $articleID = null;

    public function mount($id) {
        $this->articleID = $id;
    }

    public function render() {
        $article = Article::select('articles.*', 'categories.name as category_name')->leftJoin('categories', 'categories.id', 'articles.category_id')->findOrFail($this->articleID);

        return view('livewire.article-detail', [
            'article' => $article
        ]);
    }
}