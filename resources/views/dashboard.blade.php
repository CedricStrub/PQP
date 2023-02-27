<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">

            <form method="POST" action="{{ route('edit_film') }}">
                @csrf
                <div>
                    <label for="title">Title:</label>
                    <input type="text" id="title" name="title" value="">
                </div>
                <div>
                    <label for="runtime">Runtime:</label>
                    <input type="number" id="runtime" name="runtime" value="">
                </div>
                <div>
                    <label for="release_date">Release Date:</label>
                    <input type="text" id="release_date" name="release_date" value="">
                </div>
                <div>
                    <label for="overview">Overview:</label>
                    <input type="text" id="overview" name="overview" value="">
                </div>
                <div>
                    <label for="poster_path">Poster path:</label>
                    <input type="text" id="poster_path" name="poster_path" value="">
                </div>
                <div>
                    <label for="id">Original id:</label>
                    <input type="number" id="id" name="id" value="">
                </div>
                <button type="submit">Submit</button>
            </form>
                
                
            </div>
        </div>
    </div>
</x-app-layout>
