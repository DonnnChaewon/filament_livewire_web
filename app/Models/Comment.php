<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Article;
use App\Models\Reply;

class Comment extends Model {
    use HasFactory;

    protected $fillable = ['article_id', 'username', 'content'];

    public function article() {
        return $this->belongsTo(Article::class);
    }

    public function replies() {
        return $this->hasMany(Reply::class);
    }
}