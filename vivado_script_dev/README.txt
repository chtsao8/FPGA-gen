*******************************************************************************
* README
*******************************************************************************

### Directory Structure

- docs              : contains documentation
- overlay_<M>x<N>   : contains TCL scripts for creating a design with an accelerator
                      with input = M bits and output = N bits.
                      A Makefile is provided for building the design:
                      - make        <---- builds the design and places output collateral
                                          directly under the overlay_<M>x<N> folder.
                                          Collateral includes:
                                          - bitsream            : overlay_<M>x<N>.bit
                                          - board design        : overlay_<M>x<N>.bd.tcl
                                          - hardware handoff    : overlay_<M>x<N>.xsa
                      - make clean  <---- cleans up the directory

- ips               : contains IPs of different port width configurations
