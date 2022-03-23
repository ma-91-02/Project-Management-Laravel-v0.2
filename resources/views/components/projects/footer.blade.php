<div class="card-footer bg-transparent" dir="rtl">
    <div class="d-flex">
        <div class="d-flex align-items-center" >
            <img src="/img/clock.svg" alt="" >
            <div class="mr-2">
                {{$project->created_at->diffForHumans()}}
            </div>
        </div>
        <div class="d-flex align-items-center mr-4">
            <img src="/img/list-check.svg" alt="" >
            <div class="mr-2">
                {{$project->tasks->count()}}
            </div>
        </div>

        <div class="d-flex align-items-center flex-row-reverse mr-auto" >
            <form action="/projects/{{$project->id}}" method="POST" >
            @method('DELETE')
            @csrf
            <input type="submit" class="btn btn-delete" value="" >
            </form>
        </div>
    </div>
</div>
