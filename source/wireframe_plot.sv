

`include "defines_package.vh"


module wireframe_plot
(
	input wire plot,
	input wire clear,
	input Point2D plot_point,
	input Point2D clear_point,
	output wire write_en,
	output wire wf_data,
	output wire [(`WIREFRAME_ADDR_SIZE-1):0] addr
);


assign write_en = (clear || plot);
assign wf_data = clear ? 0 : (plot ? 1 : 0);
Point2D point;
assign point = clear ? clear_point : plot_point;
assign addr = point.y * `WIDTH + point.x;


endmodule
