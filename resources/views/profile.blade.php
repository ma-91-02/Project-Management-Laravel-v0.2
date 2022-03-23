<x-header />
@section('title', 'الملف الشخصي')

<div class="row">
    <div class="col-md-6 mx-auto">
        <div class="card">
            <div class="text-center">
                <img src="{{asset('storage/'. auth()->user()->image)}}" alt="" srcset="" width="82px" height="82px">
                <h3>{{ auth()->user()->name }}</h3>
            </div>
            <div class="card-body ">
                <form action="/profile" method="post" enctype="multipart/form-data">
                    @csrf
                    @method('PATCH')
                    <div class="form-group">
                        <label for="name">الاسم</label>
                        <input type="text" name="name" id="name" class="form-control"
                            value="{{ auth()->user()->name }}">
                    </div>
                    <div class="form-group">
                        <label for="email">البريد الالكتروني</label>
                        <input type="text" name="email" id="email" class="form-control"
                            value="{{ auth()->user()->email }}">
                    </div>
                    <div class="form-group">
                        <label for="password">كلمة المرور</label>
                        <input type="password" name="password" id="password" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="password-confirmation">تاكيد كلمة المرور</label>
                        <input type="password" name="password-confirmation" id="password-confirmation"
                            class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="image">تغير الصورة الشخصية</label>
                        <div class="custom-file">
                            <input type="file" name="image" id="image" class="custom-file-input">
                            <label for="image" class="custom-file-label text-left" id="image-label"
                                data-browse="استعراض"></label>
                        </div>
                    </div>
                    <div class="form-group d-flex mt-5 flex-row-reverse">
                        <button type="submit" class="btn btn-primary mr-2">حفظ التعديلات</button>
                        <button type="submit" class="btn btn-light" form="logout">تسجيل الخروج</button>
                    </div>
                </form>
                <form action="/logout" method="post" id="logout">
                    @csrf</form>
            </div>
        </div>
    </div>
</div>
<script>
    document.getElementById('image').onchange = uploadOnChange;
    function uploadOnChange(){
        let filename = this.value;
        let lastIndex = filename.lastIndex("\\");
        if(lastIndex>=0){
            filename = filename.substring(lastIndex + 1);
        }
        document.getElementById('image-label').innerHTML = filename;
    }
</script>
<x-footer />
