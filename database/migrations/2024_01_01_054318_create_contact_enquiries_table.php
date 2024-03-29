<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
  /**
   * Run the migrations.
   */
  public function up(): void
  {
    Schema::create('contact_enquiries', function (Blueprint $table) {
      $table->id();
      $table->string('name');
      $table->string('email');
      $table->string('country');
      $table->string('subject');
      $table->text('message');
      $table->string('ip_address', 45)->nullable();
      $table->timestamps();
    });
  }

  /**
   * Reverse the migrations.
   */
  public function down(): void
  {
    Schema::dropIfExists('contact_enquiries');
  }
};
