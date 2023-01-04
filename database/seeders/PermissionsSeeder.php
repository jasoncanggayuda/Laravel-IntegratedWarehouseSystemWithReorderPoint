<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use Spatie\Permission\PermissionRegistrar;
use Illuminate\Support\Facades\Hash;
class PermissionsSeeder extends Seeder
{
    public function run()
    {
        // Reset cached roles and permissions
        app()[PermissionRegistrar::class]->forgetCachedPermissions();

        // create permissions
        Permission::create(['name' => 'edit']);
        Permission::create(['name' => 'delete']);
        Permission::create(['name' => 'validate']);
        Permission::create(['name' => 'unvalidate']);

        // create roles and assign existing permissions
        $role1 = Role::create(['name' => 'Admin-Purchasing']);

        $role2 = Role::create(['name' => 'Manager-Purchasing']);

        $role3 = Role::create(['name' => 'Admin-Warehouse']);

        $role4 = Role::create(['name' => 'Manager-Warehouse']);

        $role5 = Role::create(['name' => 'Super-Admin']);
        // gets all permissions via Gate::before rule; see AuthServiceProvider

        // create users
        $user = \App\Models\User::factory()->create([
            'name' => 'Admin Purchasing',
            'email' => 'AP@gmail.com',
            'password' => Hash::make('12345678')
            
        ]);
        $user->assignRole($role1);
        //
        $user = \App\Models\User::factory()->create([
            'name' => 'Manager Purchasing',
            'email' => 'MP@gmail.com',
            'password' => Hash::make('12345678')
        ]);
        $user->assignRole($role2);
        //
        $user = \App\Models\User::factory()->create([
            'name' => 'Admin Warehouse',
            'email' => 'AW@gmail.com',
            'password' => Hash::make('12345678')
        ]);
        $user->assignRole($role3);
        //
        $user = \App\Models\User::factory()->create([
            'name' => 'Manager Warehouse',
            'email' => 'MW@gmail.com',
            'password' => Hash::make('12345678')
        ]);
        $user->assignRole($role4);
        //
        $superAdmin = \App\Models\User::factory()->create([
            'name' => 'Example Super-Admin User',
            'email' => 'superadmin@example.com',
            'password' => Hash::make('12345678')
        ]);
        $superAdmin->assignRole($role5);
    }
}
