<?php

namespace App\Api\Controllers;



use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;



class UserController extends Controller
{
    public function getAllUsers()
    {
        $users =  User::all();

        return  $users;
    }
    public function authenticate(Request $request)
    {
        // grab credentials from the request
        $credentials = $request->only('email','password');


        return ($token = Auth::guard('api')->attempt($credentials))
            ? response(['token' => 'bearer ' . $token,'user'=>Auth::guard('api')->user($credentials)], 201)
            : response(['error' => 'Unauthorised'], 500);

//        try {
//            echo JWTAuth::attempt($credentials).'111';
//            // attempt to verify the credentials and create a token for the user
//            if (! $token = JWTAuth::attempt($credentials)) {
//                return response()->json(['error' => 'invalid_credentials'], 401);
//            }
//        } catch (JWTException $e) {
//            // something went wrong whilst attempting to encode the token
//            return response()->json(['error' => 'could_not_create_token'], 500);
//        }
//
//        // all good so return the token
//        return response()->json(compact('token'));
    }

}
