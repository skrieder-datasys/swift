type messagefile; 

app (messagefile t) countwords (messagefile f) {   
    sh @filename(f) stdout=@filename(t);
}

string outputNames = "a1sm1ms b1sm1ms c1sm1ms";

messagefile outputfiles[] <fixed_array_mapper;files=outputNames>;

foreach f,i in outputfiles {
  //messagefile c <single_file_mapper; file=@strcat(i, ".result")>;
  messagefile c;
  c = countwords(f);
}
