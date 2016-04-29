/*
	Z Interpolation calculation.
*/


`include "defines_package.vh"
//`include "lpmdivide.v"
//`include "alt_sqrt.v"


module triangle_area
(
	input Point2D p,
	input Point2D q,
	input Point2D r,
	output integer area
);

// shoelace formula

integer sarea2, area2;

assign sarea2 = p.x*q.y + q.x*r.y + r.x*p.y - q.x*p.y - r.x*q.y - p.x*r.y;
assign area2 = sarea2 < 0 ? -sarea2 : sarea2;

assign area = area2 / 2;

endmodule


module z_interpolation
(
	input Triangle3D triangle,
	input Point2D point,
	output reg [7:0] z 
);

integer a, a1, a2, a3;
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

longint num;
assign num = (triangle.p.z * a1 + triangle.q.z * a2 + triangle.r.z * a3) / a;
//assign num = triangle.p.z * a1 / a + triangle.q.z * a2 / a + triangle.r.z * a3 / a;

//lpmdivide DIV
//	(
//		.denom(a),
//		.numer(num),
//		.quotient(zb)	
//	);

//alt_sqrt	alt_sqrt_inst (
//	.radical ( {a,num} ),
//	.q ( zb )
//	);

assign z = num[7:0];

endmodule
