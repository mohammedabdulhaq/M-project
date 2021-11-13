
# M-project

This Repository is all about my B.E. final year Project.

This Repository is created on date:30-10-2021.

>let me introduce myself. I am **Mohammed Abdul Haq** studying at Muffakham Jah College of Engineering and Technology in the field of Electronics and Communication Engineering. My Skills are Verilog, Iverilog, Gtkwave, yosys, C, C++, Python, HTML, CSS, Javascript.  

In This I am going to explain how to use Iverilog and Gtkwave for verification and simulation of verilog modules using VScode as IDE.
As we know Iverilog and gtkwave are opensource EDA tools it only runs on command prompt to make it simpler i am using vscode which provide a compact view for dealing with this kind of Opensource tools .

Before getting start plz do install:

1.icarus verilog (for windows download link:https://bleyer.org/icarus/ ).

2.vscode download link-https://code.visualstudio.com/download (also extentions i.Verilog-HDL/SystemVerilog/Bluespec SystemVerilog and ii.Graphviz Preview).

**Lets Get Started**

**Step-1**

open vscode and in vscode click openfolder using any of the two methods


![1](https://user-images.githubusercontent.com/48184231/139592710-88827e56-72da-4875-84d9-8ec65815bee3.png)

![2](https://user-images.githubusercontent.com/48184231/139592765-a0930fff-b6a8-4f23-a3bc-04453641386f.png)


**Step-2**
Creat New Folder as shown and name it. In my case Encoder

![3](https://user-images.githubusercontent.com/48184231/139593324-d6b0e568-0a23-4598-8d39-37d1c23c4b23.png)

after this select the created folder and click selectfolder button as shown

![4](https://user-images.githubusercontent.com/48184231/139593346-1bd0c6df-2f99-4320-9562-73d6b0cfd04a.png)

**Step-3**

creat new file with .v extension for example (encoder.v), by clicking the shown button

![5](https://user-images.githubusercontent.com/48184231/139593464-78dd702d-71b8-4db5-8338-8d440551d195.png)

write the verilog code in that folder

![6](https://user-images.githubusercontent.com/48184231/139593656-26a4905a-1598-4244-9f72-2c62954d3453.png)

(i will update a repository for various verilog modules, for now get verilog codes here : https://github.com/vision-vlsi/verilog/tree/main/Combinational_circuits )

**Step-4**
Creat a TestBench file for the written verilog module. the main key point to take care while writing testbench is as followes

1.include "$dumpfile"

2.include "$monitor"

![7](https://user-images.githubusercontent.com/48184231/139593761-927ae4de-6297-4d33-80e0-a42f1b8cab03.png)


**Step-5**
Now open a new terminal as shown 

![8](https://user-images.githubusercontent.com/48184231/139593788-c1b02dc3-790a-478c-807e-ccbf29ccc721.png)


In terminal type the following commands 

> iverilog modulename testbenchname 

in my case => iverilog encoder.v tb.v
![10](https://user-images.githubusercontent.com/48184231/139594344-aa18f396-fc46-46fb-b4c4-20888a5c57d4.png)


after this a new file "a.out" is generated use following command
![11](https://user-images.githubusercontent.com/48184231/139594347-277ba208-8da1-4ffd-a2a3-70d6f05685dd.png)


**Step-6**

> vvp a.out

![12](https://user-images.githubusercontent.com/48184231/139594352-c41da818-2c6f-450f-9f2a-bdcf8c61d678.png)

you will be able to see resut in terminal as well as a new file with .vcd extention which is further use for generating waveforms![13](https://user-images.githubusercontent.com/48184231/139594359-9b6ee381-8244-4a14-a40f-32fcc96c345a.png)


**Step-7**

for generating waveforms we are using gtkwave EDA Tool for waveform representation. use the following command for opening .vcd file in gtkwave

> gtkwave modulename.vcd

in my case => gtkwave encoder8to3.vcd
![14](https://user-images.githubusercontent.com/48184231/139594369-13593648-5748-44a7-ab84-50a4e36cec9e.png)

the following window pop's up click the testbench as shown and append ports.after that click zoom fit butten to observe all changing waveforms in a single window use mouse and click on the various points on waves to observe the values on left signals window.
![15](https://user-images.githubusercontent.com/48184231/139594376-87661085-476f-436c-bbca-67b8a1c8143c.png)

![16](https://user-images.githubusercontent.com/48184231/139594411-a0669e25-12ff-4128-b693-827adf87d99b.png)

![17](https://user-images.githubusercontent.com/48184231/139594412-896d3750-e51f-40a9-881a-bcca63708ffd.png)




**all Required Codes for Simulation**

1. iverilog modulename.v testbenchname.v
2. vvp a.out
3. gtkwave name.vcd


**#Module-2**

**Now Lets start the synthesys Process**

The main tool which we are using for now for synthesys process is YOSYS(Download link:http://www.clifford.at/yosys/download.html )

Please do the basic requirements before starting for that follow this repository(https://github.com/mohammedabdulhaq/tools-installing/blob/main/README.md)

in this synthesys process we are using **SKY130 liberary** File. all the required files will be provided above. after downloading all the required files you will se a folder like this

![18](https://user-images.githubusercontent.com/48184231/140085962-40e76410-ecc4-48b5-bf1f-b5317359c5d1.png)

open that highlited folder in which you will find another two more folders open simultaneously this two folders and copy all the files from it and paste it in the main module folder which we have created in the begining.(total 3 files you have to copy and paste names are as followes

![19](https://user-images.githubusercontent.com/48184231/140086654-b3cf88e2-21a5-4948-9885-43ccf8ca48b4.png)

1. sky130_fd_sc_hd__tt_025C_1v80.lib
2. sky130_fd_sc_hd.v
3. primitives.v 
![20](https://user-images.githubusercontent.com/48184231/140086725-7246f385-4138-480d-b5e4-a91513e7ca5b.png)

now come back to VScode Terminal and follow the below given steps for simulation.

**Step-1**

In terminal Type yosys to open yosys tool
![21](https://user-images.githubusercontent.com/48184231/140087229-37f9ee5c-418b-43fb-9747-da754de00d39.png)


**Step-2**

if no errors come then follow the next command Type: read_liberty -lib sky130_fd_sc_hd__tt_025C_1v80.lib

![22](https://user-images.githubusercontent.com/48184231/140087481-5166796b-4a29-40ec-a31c-8994ba1a00cf.png)


**Step-3**

after that type : read_verilog encoder.v // this command is use for reading module wirtten in verilog 
![23](https://user-images.githubusercontent.com/48184231/140087767-b13d7a5d-f380-44d7-9bf2-1f3172fe77c6.png)


**Step-4**

after that use syntax for synthesys process : synth -top modulename // modulename means the name given in the main verilog code file for example "module **modulename**(i,o)"
![24](https://user-images.githubusercontent.com/48184231/140088177-e989a290-03f9-434c-95d5-1e29d42844eb.png)


**Step-5**

For mapping flip-flops to library use following command : dfflibmap -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
![25](https://user-images.githubusercontent.com/48184231/140088479-feab02f4-20c3-4392-8cc4-488392f2ab0d.png)


**Step-6**

For mapping logic to library file use following command : abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
![26](https://user-images.githubusercontent.com/48184231/140088685-77e09215-cfe7-4375-a7b1-f44238ac150b.png)


**Step-7**

for downloading netlist file type : show 
![35](https://user-images.githubusercontent.com/48184231/140089804-78f23430-02a1-446a-b114-0a1d5b4e4f92.png)
![34](https://user-images.githubusercontent.com/48184231/140089824-c8ee11d1-ef1d-44c2-b681-a16bb615acf0.png)


**Step-8**

now use following command : tee -o report.txt stat -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
![27](https://user-images.githubusercontent.com/48184231/140088927-abc6de45-15e8-4e79-81d5-f0ffb0557e26.png)


**Step-9**

we are done with synthesys now we need to download or write the synthesys file into some sort of file mainly in verilog formate for this use : write_verilog -noattr netlist.v
![28](https://user-images.githubusercontent.com/48184231/140089241-0ae45cb3-612a-40eb-b3f6-795427e267c0.png)


**Step-10**

now we can exit for yosys tool for tha simply type "exit" and hit enter
![29](https://user-images.githubusercontent.com/48184231/140089403-1c2c81f7-98c9-4c0f-88b8-e1b63a682b8a.png)

at the end you will report.txt file and netlist.v 

in which report.txt file shows the statistical data of the design made
![32](https://user-images.githubusercontent.com/48184231/140090195-ca80e863-de0f-4ebe-8d94-503461b5f2cd.png)

and netlist.v file shows the all the detailed information which requred to make a intigrated Circuit. This is the file we give to foundry for making a physical copy.
![33](https://user-images.githubusercontent.com/48184231/140090564-5e2b2fb0-c268-40ed-a076-8f80f386a292.png)

**all required module-2 commands**
1. yosys
2. read_liberty -lib sky130_fd_sc_hd__tt_025C_1v80.lib
3. read_verilog encoder.v
4. synth -top modulename
5. dfflibmap -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
6. abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
7. show
8. tee -o report.txt stat -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
9. write_verilog -noattr netlist.v
10. exit




**#Module 3**

In this we are going to do Gatelevel simulation. for that we are going to use following files 1.netlist.v 2.sky130_fd_sc_hd.v 3.testbench.v 
use the following code for gatelevel simulation : iverilog netlist.v sky130_fd_sc_hd.v tb.v
![30](https://user-images.githubusercontent.com/48184231/140091195-77267ed1-5f9f-4277-bc5f-396a76813a16.png)

to be cont...
