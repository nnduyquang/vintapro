<template>
    <div>
        <div class="row mb-2">
            <div class="col-md-12">
                <h1 v-show="!editMode">Thêm Mới Thành Viên</h1>
                <h1 v-show="editMode">Cập Nhật Thành Viên</h1>
            </div>
        </div>
        <form
              @submit.prevent="editMode? updateMember():createMember()"
              @keydown="form.onKeydown($event)">
            <div class="row">

                <div class="col-md-8">
                    <div class="card card-primary card-outline">
                        <div class="card-body pad table-responsive">

                            <div class="modal-body">
                                <div class="form-group">
                                    <input @change="showSlug" v-model="form.title" type="text" name="title"
                                           placeholder="Tên Đối Tác"
                                           class="form-control" :class="{ 'is-invalid': form.errors.has('title') }">
                                    <has-error :form="form" field="title"></has-error>
                                </div>
                                <div class="form-group">
                                <span v-show="stateTitle">
                                <span>Slug: <span v-show="!hideSpanSlug">{{slug}}</span></span><input ref="someName"
                                                                                                      @change="changeInputSlug"
                                                                                                      v-show="hideSpanSlug"
                                                                                                      type="text"
                                                                                                      v-model="form.slug"
                                                                                                      class="form-control">
                                    <a href="#" v-show="!hideSpanSlug" @click="changeSlug">Đổi</a><a href="#"
                                                                                                     v-show="hideSpanSlug"
                                                                                                     @click="cancelSlug">Hủy</a>
                                    <a href="#" v-show="hideSpanSlug" @click="applySlug">Đồng ý</a></span>
                                    <span style="color: #dc3545;font-size: 80%"
                                          v-if="form.errors.has('slug')">{{form.errors.get('slug')}}</span>
                                </div>
                                <div class="form-group">
                            <textarea  id="description" v-model="form.description" name="description"
                                      placeholder="Mô tả ngắn về đối tác"
                                      class="form-control"
                                      :class="{ 'is-invalid': form.errors.has('description') }">
                            </textarea>
                                    <has-error :form="form" field="description"></has-error>
                                </div>
                            </div>

                            <!--<div class="modal-footer">-->
                            <!--<button v-show="editMode" type="submit" class="btn btn-success">Cập Nhật</button>-->
                            <!--<button v-show="!editMode" type="submit" class="btn btn-primary">Tạo Mới</button>-->
                            <!--</div>-->

                        </div>
                        <!-- /.card -->
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-primary card-outline">
                        <div class="card-body pad table-responsive">
                            <span>Kích hoạt</span>
                            <input name="is_active" type="checkbox"
                                   data-toggle="toggle">
                        </div>
                        <!-- /.card -->
                    </div>
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h3 class="card-title">Hình Ảnh Đại Diện</h3>
                        </div>
                        <div class="card-body pad table-responsive">
                            <main-image :pathImage="form.img_primary" idShow="showHinh" idInputPath="pathImage"
                                        idInputHidden="one_image_id"></main-image>
                        </div>
                        <!-- /.card -->
                    </div>
                    <div class="card card-primary card-outline">
                        <div class="card-body pad table-responsive">
                            <button v-show="editMode" type="submit" class="btn btn-success">Cập Nhật</button>
                            <button v-show="!editMode" type="submit" class="btn btn-primary">Tạo Mới</button>
                        </div>
                        <!-- /.card -->
                    </div>

                </div>
            </div>
        </form>
    </div>
</template>

<script>
    export default {
        props: {
            editMode: {
                type: Boolean
            }
        },
        data() {
            return {
                stateTitle: false,
                hideSpanSlug: false,
                slug: '',
                formSort: new Form({
                    listSort: '',
                }),
                form: new Form({
                    id: '',
                    title: '',
                    slug: '',
                    description: '',
                    content: '',
                    is_active: 0,
                    img_primary: '',
                    list_id_category: '0',
                    post_type: 3,
                }),
            }
        },

        methods: {
            createMember() {
                this.$Progress.start();
                this.form.post('api/post').then(() => {
                    toast.fire({
                        type: 'success',
                        title: 'Member created in successfully'
                    });
                    this.form.reset();
                    this.slug='';
                    this.hideSpanSlug = false;
                    this.stateTitle = false;
                    $('input[name=is_active]').prop('checked', false);
                    Fire.$emit('ResetMainImage');
                    Fire.$emit('InsertSuccess');

                }).catch(() => {
                    this.$Progress.fail();
                });
                this.$Progress.finish();
            },
            updateMember(){
                this.$Progress.start();
                this.form.put('api/post/' + this.form.id).then(() => {
                    this.stateTitle = false;
                    this.hideSpanSlug = false;
                    this.form.reset();
                    this.slug='';
                    this.hideSpanSlug = false;
                    this.stateTitle = false;
                    $('input[name=is_active]').prop('checked', false);
                    Fire.$emit('ResetMainImage');
                    Fire.$emit('InsertSuccess');
                    toast.fire({
                        type: 'success',
                        title: 'Bài Viết đã được cập nhật'
                    });
                }).catch(() => {
                    this.$Progress.fail();
                });
                this.$Progress.finish();
            },
            changeInputSlug(event) {
                if (!this.hideSpanSlug) {
                    this.slug = ChangeToSlug(event.target.value);
                    this.form.slug = ChangeToSlug(event.target.value);
                }

            },
            applySlug() {
                this.changeInputSlug();
                this.hideSpanSlug = false;
                this.slug = ChangeToSlug(this.$refs.someName.value);
                this.form.slug = ChangeToSlug(this.$refs.someName.value);

            },
            cancelSlug() {
                this.hideSpanSlug = false;
                this.form.slug = this.slug;
            },
            changeSlug() {
                this.hideSpanSlug = true;

            },
            showSlug(event) {
                if (event.target.value) {
                    this.stateTitle = true;
                    this.slug = ChangeToSlug(event.target.value);
                    this.form.slug = ChangeToSlug(event.target.value);

                } else {
                    this.stateTitle = false;
                    this.slug = '';
                    this.form.slug = '';
                }
            },
        },
        mounted() {
            $('input[name=is_active]').bootstrapToggle({
                on: 'Đăng',
                off: 'Không Đăng',
                width: '50%'
            });
            $('input[name=is_active]').change(function () {
                if ($(this).prop('checked'))
                    Fire.$emit('UpdateActive', 1);
                else
                    Fire.$emit('UpdateActive', 0);

            })
        },
        created() {

            Fire.$on('UpdateImgPrimary', ($content) => {
                this.form.img_primary = $content
            });

            Fire.$on('UpdateActive', ($content) => {
                this.form.is_active = $content
            });


            Fire.$on('UpdateMember', ($content) => {
                console.log($content);
                this.form.fill($content);
                this.form.list_id_category='0';

                if($content.is_active==1){
                    $('input[name=is_active]').prop('checked', true).change();
                }else{
                    $('input[name=is_active]').prop('checked', false).change();
                }

                // Fire.$emit('UpdateSeo',$content.seos);

            });
            Fire.$on('DeleteMember', ($content) => {
                swal.fire({
                    title: 'Bạn Có Chắc Muốn Xóa Thành Viên Này Không?',
                    text: "Bạn sẽ mất thành viên này vĩnh viễn",
                    type: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Vâng, Hãy xóa hắn đi!'
                }).then((result) => {
                    if (result.value) {
                        this.$Progress.start();
                        this.form.delete('api/post/' + $content).then(() => {
                            swal.fire(
                                'Đã xóa!',
                                'Bài viết đã xóa.',
                                'success'
                            )
                            Fire.$emit('InsertSuccess');
//                            Fire.$emit('ReloadTable');
                        }).catch(() => {
                            this.$Progress.fail();
                            swal.fire(
                                'Xóa thất bại!',
                                'Đã xảy ra sai xót gì đó.',
                                'warning'
                            )
                        });
                        this.$Progress.finish();
                    }
                })
            })

        }
    }
</script>
