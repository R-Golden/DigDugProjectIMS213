boulderTouched = other;
touched = true;
y = other.y;
count++;
if(count == 0) path_delete(path);