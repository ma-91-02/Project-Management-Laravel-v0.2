@csrf
<div class="form-group">
    <label for="title">عناون المشروع</label>
    <input type="text" name="title" id="title" class="form-control" value="{{$project->title}}">
</div>
<div class="form-group">
    <label for="description">وصف المشروع</label>
    <textarea name="description" id="description" cols="30" rows="10" class="form-control">{{$project->description}}</textarea>
</div>
