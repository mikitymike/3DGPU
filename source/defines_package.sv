package defines_package

parameter HEIGHT = 480;
parameter WIDTH = 640;

typedef struct packed {
	byte r, g, b;
} Color;

typedef struct packed {
	shortint x, y, z;
} Point3D;

typedef struct packed {
	shortint x, y;
} Point2D;

typedef struct packed {
	Point3D p, q, r;
} Triangle3D;

typedef struct packed {
	Point2D p, q, r;
} Triangle2D;



function shortint min3(shortint a, b, c)
begin
	min3 = a < b ? (a < c ? a : c) : (b < c ? b : c);
end
endfunction

function shortint max3(shortint a, b, c)
begin
	max3 = a > b ? (a > c ? a : c) : (b > c ? b : c);
end
endfunction


endpackage
