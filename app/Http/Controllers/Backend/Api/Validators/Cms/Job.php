<?php

namespace App\Http\Controllers\Backend\Api\Validators\Cms;

class Job
{
  public static function rules($language, $type, $recordId)
  {
    $rules = [
      'language' => 'bail|required|in:en,kr,both',
    ];

    if( in_array($language, ['en', 'both'])){
      $rules['titleEn'] = 'bail|required|alpha_string_en|content_regex_en|max:500';
      $rules['locationEn'] = 'bail|nullable|alpha_string_en|content_regex_en|max:255';
      $rules['descriptionEn'] = 'bail|required|alpha_string_en|content_regex_en|max:1000';
      $rules['responsibilityEn'] = 'bail|required|alpha_string_en|htmlpurify|max:1500';
    }
    
    if( in_array($language, ['kr', 'both'])){
      $rules['titleKr'] = 'bail|required|alpha_string_kr|content_regex_kr|max:500';
      $rules['locationKr'] = 'bail|nullable|alpha_string_kr|content_regex_kr|max:255';
      $rules['descriptionKr'] = 'bail|required|alpha_string_kr|content_regex_kr|max:1000';
      $rules['responsibilityKr'] = 'bail|required|alpha_string_kr|htmlpurify|max:1500';
    }

    if( $type === 'existing' ){
      $rules['status'] = 'bail|required|in:A,D';
    }

    return $rules;
  }

  public static function messages()
  {
    $messages = [
      'language.required' => 'The language is required.',
      'language.in' => 'The language is invalid.',

      'titleEn.required' => 'The title is required.',
      'titleEn.alpha_string_en' => 'The title must be string.',
      'titleEn.content_regex_en' => 'The title format is invalid.',
      'titleEn.max' => 'The title must not be greater than 500 characters.',

      'locationEn.required' => 'The location is required.',
      'locationEn.alpha_string_en' => 'The location must be string.',
      'locationEn.content_regex_en' => 'The location format is invalid.',
      'locationEn.max' => 'The location must not be greater than 255 characters.',

      'descriptionEn.required' => 'The description is required.',
      'descriptionEn.alpha_string_en' => 'The description must be string.',
      'descriptionEn.content_regex_en' => 'The description format is invalid.',
      'descriptionEn.max' => 'The description must not be greater than 1000 characters.',

      'responsibilityEn.required' => 'The responsibility is required.',
      'responsibilityEn.alpha_string_en' => 'The responsibility must be string.',
      'responsibilityEn.htmlpurify' => 'The responsibility format is invalid.',
      'responsibilityEn.max' => 'The responsibility must not be greater than 1500 characters.',

      'titleKr.required' => 'The title is required.',
      'titleKr.alpha_string_kr' => 'The title format is invalid.',
      'titleKr.content_regex_kr' => 'The title format is invalid.',
      'titleKr.max' => 'The title must not be greater than 500 characters.',

      'locationKr.required' => 'The location is required.',
      'locationKr.alpha_string_kr' => 'The location format is invalid.',
      'locationKr.content_regex_kr' => 'The location format is invalid.',
      'locationKr.max' => 'The location must not be greater than 255 characters.',

      'descriptionKr.required' => 'The description is required.',
      'descriptionKr.alpha_string_kr' => 'The description must be string.',
      'descriptionKr.content_regex_kr' => 'The description format is invalid.',
      'descriptionKr.max' => 'The description must not be greater than 1000 characters.',

      'responsibilityKr.required' => 'The responsibility is required.',
      'responsibilityKr.alpha_string_kr' => 'The responsibility must be string.',
      'responsibilityKr.htmlpurify' => 'The responsibility format is invalid.',
      'responsibilityKr.max' => 'The responsibility must not be greater than 1500 characters.',

      'status.required' => 'The status is required.',
      'status.in' => 'The status is invalid.'
    ];

    return $messages;
  }
}