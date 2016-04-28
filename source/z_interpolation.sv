/*
	Z Interpolation calculation.
*/


`include "defines_package.vh"


module triangle_area
(
	input Point2D p,
	input Point2D q,
	input Point2D r,
	output shortint area
);

// shoelace formula
shortint sarea2, area2;

assign sarea2 = p.x*q.y + q.x*r.y + r.x*p.y - q.x*p.y - r.x*q.y - p.x*r.y;
assign area2 = sarea2 < 0 ? -sarea2 : sarea2;

assign area = area2 >> 1;

endmodule


module z_interpolation
(
	input Triangle3D triangle,
	input Point2D point,
	output shortint z 
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


shortint num;
num = (triangle.p.z * a1 + triangle.q.z * a2, triangle.r.z * a3);

lpmdivide DIV
	(
		.denom(a),
		.numer(num),
		.quotient(z)	
	);

endmodule
