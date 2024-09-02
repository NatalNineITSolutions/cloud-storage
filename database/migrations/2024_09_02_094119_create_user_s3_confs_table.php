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
        Schema::create('user_s3_confs', function (Blueprint $table) {
            $table->id();
            $table->string('user_id')->nullable();
            $table->string('storage_s3_region')->nullable();
            $table->string('storage_s3_key')->nullable();
            $table->string('storage_s3_secret')->nullable();
            $table->string('storage_s3_bucket')->nullable();
            $table->string('storage_s3_endpoint')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('user_s3_confs');
    }
};
