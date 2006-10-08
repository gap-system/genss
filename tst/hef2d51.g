LoadPackage("genss");
Print("He F2 dim 51:\n\n");
gens := AtlasGenerators("He",5).generators;
g := Group(gens);
ti := Runtime();
S := StabilizerChain(g,rec(TryShortOrbit := 100, ShortOrbitsNrRandoms := 30));
ti2 := Runtime();
SetSize(S,Size(CharacterTable("He")));
ti3 := Runtime();
Print("\n");
S := StabilizerChain(g,rec(TryShortOrbit := 100, ShortOrbitsNrRandoms := 30));
ti4 := Runtime();
Print("\nStabChain:\n");
ViewObj(S);
Print("\n\nTime with random verification: ",ti2-ti,"\n");
Print("Time with known size: ",ti4-ti3,"\n");