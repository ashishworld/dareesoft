<?php

namespace App\Http\Controllers\Backend\View\MediaLibrary;

use App\Http\Controllers\Controller;
use App\Utility\CommonActions;
use Illuminate\Http\Request;

class MediaController extends Controller
{

  public function listPage(){
    $responseObject = [
      'pageTitle' => 'DareeSoft - Media Library',
      'activeMenu' => 'medialibrary-list',
      'isListPage' => true,
      'enableMediaLibrary' => true,
      'customScriptName' => 'media-library/index'
    ];

    $mediaLibraryYears = CommonActions::getMediaLibraryYears();
    $mediaLibraryGroups = CommonActions::getMediaLibraryGroups();

    $responseObject['mediaLibraryYears'] = $mediaLibraryYears;
    $responseObject['mediaLibraryGroups'] = $mediaLibraryGroups;

    return view('backend.media-library.list', $responseObject);
  }

  public function uploadPage(){
    $responseObject = [
      'pageTitle' => 'DareeSoft - Media Library',
      'activeMenu' => 'medialibrary-upload',
      'isListPage' => false,
      'isFormPage' => true,
      'customScriptName' => 'media-library/index'
    ];

    $mediaLibraryGroups = CommonActions::getMediaLibraryGroups();
    $responseObject['mediaLibraryGroups'] = $mediaLibraryGroups;

    return view('backend.media-library.upload', $responseObject);
  }
  
}