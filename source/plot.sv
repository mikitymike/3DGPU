

import defines_package::*;


module plot
(
	input wire plot,
	input Point2D point,
	output wire write_en,
	output wire wf_data,
	output wire [(WIREFRAME_ADDR_SIZE-1):0] addr
);


assign write_en = plot;
assign wf_data = 1;
assign addr = point.y * WIDTH + point.x;


endmodule
