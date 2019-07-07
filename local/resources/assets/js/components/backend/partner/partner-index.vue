<template>
    <div>
        <div v-show="showIndex" class="row">
            <div class="col-md-12 mt-5">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Quản Lý Thành Viên</h3>

                        <div class="card-tools">
                            <button class="btn btn-success" @click.prevent="insertMember">Thêm Mới <i
                                    class="fas fa-plus fa-fw"></i></button>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0 dd">
                        <table class="table table-hover dd-list">
                            <tbody>
                            <tr>
                                <th>ID</th>
                                <th>Tên Đối Tác</th>
                                <th>Ngày Tạo</th>
                                <th>Tình Trạng</th>
                                <th>Hành Động</th>
                            </tr>
                            <tr v-for="member in members"
                                :key="member.id">
                                <td>{{member.id}}</td>
                                <td>{{member.title}}</td>
                                <td>{{member.created_at | myDate}}</td>
                                <td v-if="member.is_active==1"><i style="color:green;"
                                                                class="fas fa-circle"></i>
                                </td>
                                <td v-if="member.is_active==0"><i style="color:red;"
                                                                class="fas fa-circle"></i>
                                </td>
                                <td>
                                    <a href="#" @click="editMember(member)"><i class="fa fa-edit"></i></a>
                                    /
                                    <a href="#" @click="deleteMember(member.id)"><i style="color:red" class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                    <!-- /.card-body -->
                    <!--<div class="card-footer">-->
                    <!--<pagination :data="categories" @pagination-change-page="getResults"></pagination>-->
                    <!--</div>-->
                </div>
                <!-- /.card -->
            </div>
        </div>
        <insert-update-partner v-show="showUpdate" :editMode="editMode"></insert-update-partner>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                showUpdate:false,
                showIndex:true,
                members: {},
                editMode: false,
                post_type:3
            }
        },
        methods: {
            loadMembers() {
                axios.get('api/post',{params:this.axiosParams}).then(({data}) => (this.members = data));
            },
            insertMember(){
                this.showUpdate=true;
                this.showIndex=false;
                this.editMode=false;
            },
            editMember(member){
                this.showUpdate=true;
                this.showIndex=false;
                this.editMode=true;
                Fire.$emit('UpdateMember',member);
            },
            deleteMember(id){
                Fire.$emit('DeleteMember',id);
            },
        },
        created() {
            Fire.$on('searching', () => {
                let query = this.$parent.search;
                axios.get('api/findUser?q=' + query).then((data) => {
                    this.users = data.data;
                }).catch(() => {

                })
            });
            Fire.$on('InsertSuccess', () => {
                this.showUpdate=false;
                this.showIndex=true;
                this.loadMembers();
            });
            this.loadMembers();
        },
        mounted() {
            console.log('Component mounted.')
        },
        computed: {
            axiosParams() {
                const params = new URLSearchParams();
                params.append('post_type', this.post_type);
                return params;
            }
        }
    }
</script>