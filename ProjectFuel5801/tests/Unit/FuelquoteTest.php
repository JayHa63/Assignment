<?php

namespace Tests\Unit;

use App\Fuelquote;
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
        $response = $this->get('/fuelquote');

        //$response->assertStatus(200);
    }
  }