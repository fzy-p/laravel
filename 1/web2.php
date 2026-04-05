use Illuminate\Support\Facades\DB;

Route::get('/users', function () {
    $users = DB::table('users')->get();
    return view('users', ['users' => $users]);
});