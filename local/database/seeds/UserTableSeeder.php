<?php

use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->truncate();
        App\User::create([
            'name' => 'Quang Nguyen',
            'email' =>'nnduyquang@gmail.com',
            'password' => bcrypt('123456789')
        ]);
    }
}
