# All of the client-side templates we use in Play. These are probably more
# "partials" than full-fledged templates, and from the perspective of
# mustache.js we use the two concepts interchangeably, as we define partials in
# the global `templates` Array.
window.templates = []

templates.list = """

  <div class="list">
    {{#songs}}
      {{>song}}
    {{/songs}}
  </div>
"""

templates.song = """
  <div class="song">
    <div class="song_album">
      <a href="#" data-artist="{{{artist}}}" data-album="{{{album}}}" class="album album-art" alt="{{{album}}}">{{{art_tag}}}</a>
    </div>

    <ul class="song-info">
      <li>{{name}}</li>
      <li>{{{artist_tag}}}</li>
    </ul>

    <ul class="song-actions">
      <li>{{>star}}</li>
      <li>{{>download_song}}</li>
      <li>{{>download_album}}</li>

      <li>{{>queuing}}</li>
    </ul>

  </div>
"""

templates.now_playing = """
  <a href="#" data-artist="{{{artist}}}" data-album="{{{album}}}" class="album album-art" alt="{{{album}}}">{{{art_tag}}}</a>

  <ul>
    <li class="name">{{name}}</li>
    <li class="artist">{{{artist_tag}}}</li>
    <li class="album">{{{album_tag}}}</li>
  </ul>

  {{>star}}
  {{>download_song}}


"""

templates.star = """
  {{#starred}}
    <a href="/unstar" class="unstar" data-song-id="{{id}}">unstar it</a>
  {{/starred}}

  {{^starred}}
    <a href="/star" class="star" data-song-id="{{id}}">star it</a>
  {{/starred}}
"""

templates.queuing = """
  {{#queued}}
    <a href="/queue/remove" class="remove-from-queue" data-song-id="{{id}}">remove from queue</a>
  {{/queued}}

  {{#queued}}
    <a href="/queue/add" class="add-to-queue" data-album-id="{{album}}">add to queue</a>
  {{/queued}}

  {{^queued}}
    <a href="/queue/add" class="add-to-queue" data-song-id="{{id}}">add to queue</a>
  {{/queued}}
"""

templates.download_song = """
  <a class="download" href="/song/{{id}}/download">download song</a>
"""

templates.download_album = """
  <a class="download" href="/artist/{{artist}}/album/{{album}}/download">download album</a>
"""