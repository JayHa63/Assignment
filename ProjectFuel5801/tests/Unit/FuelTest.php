<?php

namespace Tests\Unit;

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
     public function testExample()
    {
        $this->assertTrue(true);
    }

    public function testUrl()
    {
        $response = $this->get('/public');

        //$response->assertStatus(200);
    }
  }