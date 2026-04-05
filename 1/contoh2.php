<!DOCTYPE html>
<html>
<head>
    <title>Data Users</title>
</head>
<body>

    <h1>Data Users</h1>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nama</th>
            <th>Email</th>
        </tr>

        @foreach ($users as $user)
        <tr>
            <td>{{ $user->id }}</td>
            <td>{{ $user->name }}</td>
            <td>{{ $user->email }}</td>
        </tr>
        @endforeach

    </table>

</body>
</html>