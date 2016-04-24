/*
	Types and constants.	
*/


//package defines_package;
//parameter HEIGHT = 480;
//parameter WIDTH = 640;
//parameter WIREFRAME_ADDR_SIZE = 19;


`ifndef DEFINES_PACKAGE_VH
`define DEFINES_PACKAGE_VH

`define HEIGHT 480
`define WIDTH  640
`define WIREFRAME_ADDR_SIZE 19


typedef struct packed {
	byte r, g, b;
} Color;

typedef struct packed {
	shortint x, y, z;
} Point3D;

typedef struct packed {
	shortint x;
	shortint y;
} Point2D;

typedef struct packed {
	Point3D p;
	Point3D q;
	Point3D r;
} Triangle3D;

typedef struct packed {
	Point2D p;
	Point2D q;
	Point2D r;
} Triangle2D;

`endif

/*
function shortint min3(shortint a, b, c);
begin
	min3 = a < b ? (a < c ? a : c) : (b < c ? b : c);
end
endfunction

function shortint max3(shortint a, b, c);
begin
	max3 = a > b ? (a > c ? a : c) : (b > c ? b : c);
end
endfunction

function shortint triangle_area(Point2D p, Point2D q, Point2D r);
begin
	shortint minx, maxx, miny, maxy, area2;
	
	assign minx = min3(p.x, q.x, r.x);
	assign maxx = max3(p.x, q.x, r.x);
	assign miny = min3(p.y, q.y, r.y);
	assign maxy = max3(p.y, q.y, r.y);

	assign area2 = (maxx - minx) * (maxy - miny);
	assign triangle_area  = area2 >> 1;
end
endfunction

function shortint z_interpolation(Triangle3D triangle, Point2D point);
begin
	shortint a, a1, a2, a3;
	Point2D p, q, r;

	assign p = {triangle.p.x, triangle.p.y};
	assign q = {triangle.q.x, triangle.q.y};
	assign r = {triangle.r.x, triangle.r.y};
	
	assign a = triangle_area(p, q, r);
	assign a1 = triangle_area(point, q, r);
	assign a2 = triangle_area(p, point, r);
	assign a3 = triangle_area(p, q, point);
	
	assign z_interpolation = (triangle.p.z * a1 + triangle.q.z * a2 + triangle.r.z * a3) / a;
end
endfunction
*/

//endpackage
