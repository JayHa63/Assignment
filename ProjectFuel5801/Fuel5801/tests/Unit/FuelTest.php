<?php

namespace Tests\Feature;

use App\Fuel;
use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class FuelTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
     public function testurl()
    {
        $response = $this->get('/public');

        $response->assertStatus(200);//
    }

    public function testUser_Can_View_FuelList_onHomepage()
    {
        $response = $this->get('/public');

        $response->assertStatus(200);

        $response->assertViewIs('/listfuel');
  }
}