<template>
    <form
            @submit.prevent="sendMail()"
            @keydown="form.onKeydown($event)">
        <div class="contact_top">
            <h3 class="title">Gửi liên hệ</h3>
            <hr>
            <p>
                Nếu bạn có thắc mắc, đừng ngần ngại gửi yêu cầu cho chúng tôi, và chúng tôi sẽ liên lạc lại
                với bạn trong vòng 24 tiếng đồng hồ
            </p>
        </div>
        <div class="contact_bottom">
            <div class="form-group">
                <input v-model="form.name" type="text" name="title"
                       placeholder="Tên quý khách"
                       class="form-control" :class="{ 'is-invalid': form.errors.has('name') }">
                <has-error :form="form" field="name"></has-error>
            </div>
            <div class="form-group">
                <input v-model="form.email" type="text" name="title"
                       placeholder="Email"
                       class="form-control" :class="{ 'is-invalid': form.errors.has('email') }">
                <has-error :form="form" field="email"></has-error>
            </div>
            <div class="form-group">
                <input v-model="form.phone" type="text" name="title"
                       placeholder="Số điện thoại"
                       class="form-control" :class="{ 'is-invalid': form.errors.has('phone') }">
                <has-error :form="form" field="phone"></has-error>
            </div>
            <div class="form-group">
            <textarea v-model="form.content_mail" name="description"
                      placeholder="Mô tả ngắn về yêu cầu của quý khách"
                      class="form-control">
             </textarea>

            </div>
            <div class="button-group">
                <!--<button id="btnSendMail" type="button" class="btn btn-contact">Gửi Liên Hệ<i-->
                <!--class="fa fa-spinner fa-spin fa-3x fa-fw loadingSending" style="-->
                <!--font-size: 15px;display: none"></i><i-->
                <!--class="fa fa-check-circle successSending" style="display: none"-->
                <!--aria-hidden="true"></i></button>-->
                <!--<span style="display: none">Chúng tôi đã nhận được mail và sẽ phản hồi quý khách trong 24h. Xin cảm ơn.</span>-->
                <button type="submit" class="btn btn-contact">Gửi
                    <i class="fa fa-spinner fa-spin fa-3x fa-fw loadingSending"
                       :style="enable_loading"></i>
                    <i class="fa fa-check-circle successSending" :style="enable_success" aria-hidden="true"></i>
                </button>
                <span :style="enable_success">Chúng Tôi Đã Nhận Được Mail. Xin Chân Thành Cảm Ơn</span>
            </div>
        </div>
    </form>
</template>

<script>
    export default {
        data() {
            return {
                enable_loading:{
                    fontSize: '15px',
                    display:'none'
                },
                enable_success:{
                    display:'none'
                },
                form: new Form({
                    email: '',
                    name: '',
                    phone: '',
                    content_mail: ''
                }),
            }
        },
        methods: {
            sendMail() {
                this.enable_loading.display='block';
                this.$Progress.start();
                this.form.post('sendmail/send').then(() => {
                    this.enable_loading.display='none';
                    toast.fire({
                        type: 'success',
                        title: 'Email created in successfully'
                    });
                    this.enable_success.display='block';
                    setTimeout(function(){
                        Fire.$emit('SetNoneDisplay');
                    }, 4000);



                    this.form.reset();
                }).catch(() => {
                    this.$Progress.fail();
                });
                this.$Progress.finish();
            }
        },
        mounted() {
            console.log('Component mounted.')
        },
        created(){
            Fire.$on('SetNoneDisplay', () => {
                this.enable_success.display='none';
            });
        }
    }
</script>
