<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Comment;

class CommentController extends Controller {
    public function store(Request $request, $articleId) {
        $request->validate([
            'username' => 'required|string|max:50',
            'content' => 'required|string',
        ]);

        Comment::create([
            'article_id' => $articleId,
            'username' => $request->username,
            'content' => $request->content,
        ]);

        return back()->with('success', 'Your comment has been added!');
    }

    public function update(Request $request, Comment $comment) {
        $request->validate([
            'username' => 'required|string|max:50',
            'content' => 'required|string',
        ]);

        $comment->update([
            'username' => $request->username,
            'content' => $request->content,
        ]);

        return back()->with('success', 'Your comment has been updated!');
    }

    public function destroy(Comment $comment) {
        $comment->delete();

        return back()->with('success', 'Your comment has been deleted!');
    }
}