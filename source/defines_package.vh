/*
	Types and constants.	
*/

`ifndef DEFINES_PACKAGE_VH
`define DEFINES_PACKAGE_VH


`define HEIGHT 			480
`define WIDTH  			640
`define SRAM_ADDR_SIZE		 19
`define WIREFRAME_ADDR_SIZE 	 19
`define FRAME_BUFFER_ADDR_SIZE 	 19
`define COLOR_BITS 		 24
// CHUNK_SIZE must evenly divide HEIGHT
`define CHUNK_SIZE		  4
`define NUM_CF_MODS		(HEIGHT / CHUNK_SIZE)


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
   Point2D s;
   Point2D p;
} Line2D;

typedef struct {
   Point2D side [8];
   logic [2:0] size;
} Polygon2D;

typedef struct packed {
	Point3D p, q, r;
} Triangle3D;

typedef struct packed {
	Point2D p, q, r;
} Triangle2D;


`endif /* DEFINES_PACKAGE_VH */
