/*
	Z Interpolation calculation.
*/


`include "defines_package.vh"


module min3_shortint
(
	input shortint a,
	input shortint b,
	input shortint c,
	output shortint min
);

assign min = a < b ? (a < c ? a : c) : (b < c ? b : c);

endmodule


module max3_shortint
(
	input shortint a,
	input shortint b,
	input shortint c,
	output shortint max
);

assign max = a > b ? (a > c ? a : c) : (b > c ? b : c);

endmodule


module triangle_area
(
	input Point2D p,
	input Point2D q,
	input Point2D r,
	output shortint area
);

shortint minx, maxx, miny, maxy; 


min3_shortint MINX
	(
		.a(p.x),
		.b(q.x),
		.c(r.x),
		.min(minx)
	);

min3_shortint MINY
	(
		.a(p.y),
		.b(q.y),
		.c(r.y),
		.min(miny)
	);

max3_shortint MAXX
	(
		.a(p.x),
		.b(q.x),
		.c(r.x),
		.min(maxx)
	);

max3_shortint MAXY
	(
		.a(p.y),
		.b(q.y),
		.c(r.y),
		.min(maxy)
	);


assign area = ((maxx - minx) * (maxy - miny)) >> 1;

endmodule


module z_interpolation
(
	input Triangle3D triangle,
	input Point2D point,
	output shortint z; 

);

shortint a, a1, a2, a3;
Point2D p, q, r;

assign p = {triangle.p.x, triangle.p.y};
assign q = {triangle.q.x, triangle.q.y};
assign r = {triangle.r.x, triangle.r.y};


triangle_area AREA
	(
		.p(p),
		.q(q),
		.r(r),
		.area(a)
	);

triangle_area AREA1
	(
		.p(point),
		.q(q),
		.r(r),
		.area(a1)
	);

triangle_area AREA2
	(
		.p(p),
		.q(point),
		.r(r),
		.area(a2)
	);

triangle_area AREA3
	(
		.p(p),
		.q(q),
		.r(point),
		.area(a3)
	);

assign z = (triangle.p.z * a1 + triangle.q.z * a2, triangle.r.z * a3) / a;

endmodule
