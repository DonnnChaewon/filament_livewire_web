<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Reply;

class ReplyController extends Controller {
    public function store(Request $request, $commentId) {
        $request->validate([
            'username' => 'required|string|max:50',
            'content' => 'required|string',
        ]);

        Reply::create([
            'comment_id' => $commentId,
            'username' => $request->username,
            'content' => $request->content,
        ]);

        return back()->with('success', 'Your reply has been added!');
    }

    public function update(Request $request, Reply $reply) {
        $request->validate([
            'username' => 'required|string|max:50',
            'content' => 'required|string',
        ]);

        $reply->update([
            'username' => $request->username,
            'content' => $request->content,
        ]);

        return back()->with('success', 'Your reply has been updated!');
    }

    public function destroy(Reply $reply) {
        $reply->delete();

        return back()->with('success', 'Your reply has been deleted!');
    }
}