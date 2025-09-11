%Musician, genre
musician_genre(miles_davis, jazz).
musician_genre(jimi_hendrix, rock).
musician_genre(herbie_hancock, jazz).
musician_genre(yo-yo_ma, classical).
musician_genre(freddie_mercury, rock).
musician_genre(ludwig_van_beethoven, classical).
musician_genre(stevie_wonder, soul).
musician_genre(bonnie_raitt, blues).
musician_genre(john_coltrane, jazz).
musician_genre(carlos_santana, rock).
musician_genre(alicia_keys, soul).
musician_genre(eric_clapton, blues).
musician_genre(wolfgang_amadeus_mozart, classical).
musician_genre(bill_evans, jazz).

%Musician, instrument
musician_plays(miles_davis, trumpet).
musician_plays(miles_davis, piano).
musician_plays(jimi_hendrix, electric_guitar).
musician_plays(herbie_hancock, piano).
musician_plays(yo-yo_ma, cello).
musician_plays(freddie_mercury, piano).
musician_plays(freddie_mercury, vocals).
musician_plays(ludwig_van_beethoven, piano).
musician_plays(stevie_wonder, piano).
musician_plays(stevie_wonder, harmonica).
musician_plays(bonnie_raitt, electric_guitar).
musician_plays(bonnie_raitt, vocals).
musician_plays(john_coltrane, saxophone).
musician_plays(carlos_santana, electric_guitar).
musician_plays(alicia_keys, piano).
musician_plays(alicia_keys, vocals).
musician_plays(eric_clapton, electric_guitar).
musician_plays(wolfgang_amadeus_mozart, piano).
musician_plays(wolfgang_amadeus_mozart, violin).
musician_plays(bill_evans, piano).

genre_instrument(X, Y) :- musician_genre(Z, X), musician_plays(Z, Y).

% | ?- genre_instrument(Genre, vocals).
% Genre = rock 
% Genre = blues
% Genre = soul

% | ?- genre_instrument(classical, Instrument).
% Instrument = cello
% Instrument = piano
% Instrument = piano
% Instrument = violin

% | ?- genre_instrument(Genre, Instrument).
% Genre = jazz
% Instrument = trumpet ? ;
% Genre = jazz
% Instrument = piano ? ;
% Genre = rock
% Instrument = electric_guitar ? ;
% Genre = jazz
% Instrument = piano ? ;
% Genre = classical
% Instrument = cello ? ;
% Genre = rock
% Instrument = piano ? ;
% Genre = rock
% Instrument = vocals ? a
% Genre = classical
% Instrument = piano
% Genre = soul
% Instrument = piano
% Genre = soul
% Instrument = harmonica
% Genre = blues
% Instrument = electric_guitar
% Genre = blues
% Instrument = vocals
% Genre = jazz
% Instrument = saxophone
% Genre = rock
% Instrument = electric_guitar
% Genre = soul
% Instrument = piano
% Genre = soul
% Instrument = vocals
% Genre = blues
% Instrument = electric_guitar
% Genre = classical
% Instrument = piano
% Genre = classical
% Instrument = violin
% Genre = jazz
% Instrument = piano