@csrf
<div class="form-group">
    <label for="title">عنوان المشروع</label>
    <input type="text" name="title" id="title" class="form-control" value="{{ $project->title }}">
    @error('title')
        <div class="text-danger">
            <small class="">{{ $message }}</small>
        </div>
    @enderror
</div>
<div class="form-group">
    <label for="description">وصف المشروع</label>
    <textarea name="description" id="description" class="form-control">{{ $project->description }}</textarea>
    @error('description')
      <div class="text-danger">
        <small class="">{{$message}}</small>
      </div>
    @enderror

</div>
