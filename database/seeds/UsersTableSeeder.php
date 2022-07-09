<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = User::create([
        	"name" => "admin",
        	"role_id" => 1,
        	"email" => "admin@admin.com",
        	"password" => bcrypt("password")
        ]);
    }
}
