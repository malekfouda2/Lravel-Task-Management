@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Comments for Task: {{ $task->title }}</h2>

    <div class="comments">
        <h3>All Comments</h3>
        @if($task->comments->isEmpty())
            <p>No comments yet.</p>
        @else
            @foreach($task->comments as $comment)
                <div class="comment mb-3 p-2 border rounded">
                    <strong>{{ $comment->user->name }}</strong>
                    <p>{{ $comment->content }}</p>
                    <small class="text-muted">{{ $comment->created_at->diffForHumans() }}</small>
                </div>
            @endforeach
        @endif
    </div>

    <div class="add-comment mt-4">
        <h3>Add a Comment</h3>
        <form action="{{ route('comments.store', $task->id) }}" method="POST">
            @csrf
            <div class="form-group">
                <textarea name="content" class="form-control" placeholder="Write your comment..." required></textarea>
            </div>
            <button type="submit" class="btn btn-primary mt-2">Add Comment</button>
        </form>
    </div>
</div>
@endsection
