
#//*****************************************************
#//<<<<<>>>>>>> <<<<<>>>>>>> <<<<<>>>>>>> <<<<<>>>>>>>
#//*****************************************************
#//This compiler uses 3 text files to relieve the code ,
#//the first file is used to input one of 4 key words 
#//(INTIALIZATION , OPERATION , CONDITION AND OUTPUT).
#//the keywords need to be entered in full caps so the program works 
#//1-INTIALIZATION : intialieses the following "sign \ keyword" in the next file ,
#//2-OPERATION : lets the compiler know that the entered sign is gonna be one of the following (SUM , SUB, MUL)
#//and then uses the appropriate modified code .
#//3-CONDITION : uses the IF statement in one of the following options (>,<,=),
#//it lets the compiler know that we are going to preform a condition operation such as:
#// (if x>y) or (if x<y) or (if x=y) , the compiler automatically subs the previously entered variables  and
#//the appropriate assembly code ,
#//4-OUTPUT : the compiler outputs a code for loading and storing the entered variables . 
#//*****************************************************
#//<<<<<>>>>>>> <<<<<>>>>>>> <<<<<>>>>>>> <<<<<>>>>>>>
#//*****************************************************
####//RULES:-
#//*-The three files need to equally in the number of lines or an Exception will arise .
#//*-The compiler only works with 2  variables which are (X,Y) ,intialiesed at the begining of the program with (INTIALIZE) command.
##//*-The compiler can only do ONE operation at the time , defined in the command file at the begining.
#//*-The compiler will output assembly ready code for the assembler.
#//*-The compiler uses manual analyzing using the 3 files , and parses through tokens in each file .
##//*-The compiler output is modified specifcally for the sic machine and only outputs suitable simple sic code (no complicated commands yet ). 
#//*-The compiler variables are limited to X and Y , so the assembler can work with it .
##//*-The compiler only works with simple math operations (+,-,*).
##//*****************************************************
#//<<<<<>>>>>>> <<<<<>>>>>>> <<<<<>>>>>>> <<<<<>>>>>>>
#//*****************************************************
###################################################
file1 = File.open("test.TXT")
file2 = File.open("test2.TXT")
file3 = File.open("test3.TXT")

fname1 = 'test.TXT'
fname2 = 'test2.TXT'
fname3 = 'test3.TXT'

lines1 = File.readlines(fname1)
lines2 = File.readlines(fname2)
lines3 = File.readlines(fname3)
x= lines3[0]
y= lines3[1]




  case lines1[2]
  when "OPERATION"
    
    if lines2[2] === "SUM"
      print "LDA"
      puts "  X"
      print "ADD"
      puts "  Y"
      print "STA"
      puts "  Y"
    end

      
   if  lines2[2] === "SUB"
       print "LDA"
      puts "  X"
      print "SUB"
      puts "  Y"
      print "STA"
      puts "  Y"
  
   end
    
    if lines2[2] === "MUL"
       print "LDA"
      puts "  X"
      print "MUL"
      puts "  Y"
      print "STA"
      puts "  Y"
  
    end
  when "CONDITION"
    
    if (lines2[2] ===">")
      print "LDA"
      puts "  X"
      print "COMP"
      puts " Y"
      print "JGT"
      puts "  Y"
    end
    if lines2[2] === "="
        print "LDA"
      puts "  X"
      print "COMP"
      puts " Y"
      print "JEQ"
      puts "  Y"
    end
    if lines2[2] === "<"
      print "LDA"
      puts "  X"
      print "COMP"
      puts " y"
      print "JLT"
      puts "  Y"
    end
  when "OUTPUT"
    print "LDA  "
    puts lines3[0]
    print "STA"
    puts "  X"
    print "LDA  "
    puts lines3[1]
    print "STA"
    puts "  Y"
    
    
    
    
  else
    puts "error"
  
  
  end




file1.close
file2.close
file3.close