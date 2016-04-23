/*
	Orthogonal Projection of 3D coordinates to 2D.
*/


import defines_package::*;


module ortho_proj
(
	input Triangle3D tri3,
	output Triangle2D tri2
);


assign tri2.p.x = tri3.p.x;
assign tri2.p.y = tri3.p.y;

assign tri2.q.x = tri3.q.x;
assign tri2.q.y = tri3.q.y;

assign tri2.r.x = tri3.r.x;
assign tri2.r.y = tri3.r.y;


endmodule
