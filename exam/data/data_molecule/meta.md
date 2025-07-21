We consider data on the molecule Ac-A-NHMe, also frequently referred to as alanine dipeptide.

Information on the molecule can be found, for instance, at:
https://pubchem.ncbi.nlm.nih.gov/compound/5484387

But such detailed knowledge is not necessary for the exam.

In particular, we consider a simulation of the evolution of this molecule in time, i.e. how the individual atoms move. Such simulation data is available, for instance, at:
https://markovmodel.github.io/mdshare/ALA2/#alanine-dipeptide

This data is the source/basis for the data in this exam. All required information is contained in the file molecule.npz that can be imported with numpy.load(). The file contains several arrays:

* positions: dtype: float32, shape: (50000,10,3)
  It contains a simulated trajectory of 50000 time steps, where each row contains for the 10 non-hydrogen atoms of the molecule the 3d position.
  So positions[t,i,j] contains for the t-th time-step, of non-hydrogen atom number i, the j-th spatial coordinate.
  The length of one time step is 1 picosecond. The entire provided data covers 50 nanoseconds in 50000 steps. The length unit of the 3d positions are nanometers.
* angles: dtype: float32, shape: (50000,2)
  It contains for all time steps the two backbone torsion angles \phi and \psi.
  The angles are given in radians with values in [-pi,pi] and should be considered as cyclic values (i.e. -pi is equivalent to pi).
  It is not necessary to know the exact definition of the angles for the exam. An illustration is given under
  Figure 3 in https://ambermd.org/tutorials/advanced/tutorial19/index.php 
  The important part is, that these two angles give a good low-dimensional description of the whole state of the molecule (which consists of 10 3d position coordinates).
* distances: dtype: float32, shape: (50000,45)
  It contains for all time steps all pairwise distances of the non-hydrogen atoms. For 10 atoms there are 45 pairwise distanes (excluding self-distances, and considering that the distance is symmetric).
  It is not important for the exam to know, which entry of this vector belongs to which atom pair. They are simply used as a meaningful feature for dimensionality reduction.
* atomTypes: dtype: "U1", shape: (10,)
  The entries give for each of the non-hydrogen atoms contained in the positions array the element of the atom, which is one of [C,N,O].
  So the atom with index i (starting at zero) is of type atomTypes[i]. This corresponds to the i-th entry in the positions array along the middle axis.
* edges: dtype: int64, shape: (9,2)
  Specifies the bonds between the non-hydrogen atoms contained in the positions arrray. Each element [i,j] of edges indicates that there is a bond between atoms i and j.



