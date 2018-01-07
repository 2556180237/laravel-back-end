<?php

use Illuminate\Database\Seeder;
Use App\Data;

class DataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        Data::truncate();

        $faker = \Faker\Factory::create();

        for ($i = 0; $i < 10; $i++) {
            Data::create([
                'info' => $faker->sentence,
            ]);
        }
    }
}
