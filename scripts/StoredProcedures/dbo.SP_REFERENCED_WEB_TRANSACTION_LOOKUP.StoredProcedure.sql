/ * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ S P _ R E F E R E N C E D _ W E B _ T R A N S A C T I O N _ L O O K U P ]         S c r i p t   D a t e :   0 8 / 1 4 / 2 0 1 2   1 3 : 5 7 : 0 2   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   P R O C E D U R E     [ d b o ] . [ S P _ R E F E R E N C E D _ W E B _ T R A N S A C T I O N _ L O O K U P ]    
 	 	 @ T R A N S A C T I O N _ R E F _ N U M   V A R C H A R ( 5 0 ) ,   @ S I T E _ N A M E   V A R C H A R ( 5 0 ) 	  
 A S  
 B E G I N  
 D E C L A R E   @ S Q L   N V A R C H A R ( 4 0 0 0 )   =   ' ' ;  
 D E C L A R E   @ C O N D I T I O N   N V A R C H A R ( 4 0 0 0 )   =   ' ' ;  
 S E T   @ S Q L   =   '   S E L E C T  
                         w e b T x . I D   A S   w e b T x _ I D  
                         , w e b T x . T X _ R E F E R E N C E _ N U M   A S   w e b T x _ T X _ R E F E R E N C E _ N U M  
                         , w e b T x . O R G _ R E F _ N U M   A S   w e b T x _ O R G _ R E F _ N U M  
                         , w e b T x . A M O U N T   A S   w e b T x _ A M O U N T  
                         , w e b T x . S E R V I C E _ F E E   A S   w e b T x _ S E R V I C E _ F E E  
                         , w e b T x . T X _ A M O U N T   A S   w e b T x _ T X _ A M O U N T  
                         , w e b T x . C O M M E N T S   A S   w e b T x _ C O M M E N T S  
                         , w e b T x . T X _ T Y P E   A S   w e b T x _ T X _ T Y P E  
                         , w e b T x . C H E C K N U M   A S   w e b T x _ C H E C K N U M  
                         , w e b T x . T X _ D A T E   A S   w e b T x _ T X _ D A T E     	                                          
                         , w e b T x . C A R D _ N U M B E R   A S   w e b T x _ C A R D _ N U M B E R  
                         , w e b T x . A C C O U N T N A M E   A S   w e b T x _ A C C O U N T N A M E  
                         , w e b T x . M A C H I N E N A M E   A S   w e b T x _ M A C H I N E N A M E  
                         , w e b T x . D A T E _ T I M E _ C R E A T E D   A S   w e b T x _ D A T E _ T I M E _ C R E A T E D  
                         , w e b T x . S E T T L E M E N T _ S T A T U S   A S   w e b T x _ S E T T L E M E N T _ S T A T U S  
                         , s i t e . N A M E   A S   s i t e _ N A M E  
 	 	 	 , u s e r s . E M A I L _ I D   A S   u s e r s _ E M A I L _ I D  
                         , a c c e s s . A C C E S S _ D E S C R   A S   a c c e s s _ A C C E S S _ D E S C R  
                         , m e r c h a n t . P A R T N E R   A S   m e r c h a n t _ P A R T N E R  
                         , m e r c h a n t . V E N D O R N A M E   A S   m e r c h a n t _ V E N D O R N A M E  
                         , m e r c h a n t . U S E R N A M E   A S   m e r c h a n t _ U S E R N A M E  
                         , m e r c h a n t . P A S S W O R D   A S   m e r c h a n t _ P A S S W O R D          
                         , A C C E S S . I D   A S   A C C E S S _ I D  
                         , I T E M S . P R O D U C T _ I D   A S   I T E M S _ P R O D U C T _ I D  
                         , I T E M S . P R O D U C T _ T Y P E   A S   I T E M S _ P R O D U C T _ T Y P E  
                         , I T E M S . P A G E _ C O U N T   A S   I T E M S _ P A G E _ C O U N T  
                         , I T E M S . A M O U N T   A S   I T E M S _ A M O U N T  
                         , I T E M S . T O T A L _ A M O U N T   A S   I T E M S _ T O T A L _ A M O U N T  
                         , w e b T x . M O D _ U S E R _ I D   A S   w e b T x _ M O D _ U S E R _ I D  
                         , W E B T X . T A X   A S   W E B T X _ T A X  
 	 	 	 , W E B T X . A P P L I C A T I O N   A S   W E B T X _ A P P L I C A T I O N  
 	 	 	 , I T E M S . I T E M _ N A M E   A S   I T E M S _ I T E M _ N A M E  
 	 	 	 , I T E M S . I T E M _ Q U A N T I T Y   A S   I T E M S _ I T E M _ Q U A N T I T Y  
 	 	 	 , I T E M S . S E R V I C E _ F E E   A S   I T E M S _ S E R V I C E _ F E E  
 	 	 	 , I T E M S . T A X   A S   I T E M S _ T A X  
 	 	 	 , m e r c h a n t . T R A N _ F E E _ P E R C E N T A G E   A S   m e r c h a n t _ T R A N _ F E E _ P E R C E N T A G E  
                         , m e r c h a n t . T R A N _ F E E _ F L A T   A S   m e r c h a n t _ T R A N _ F E E _ F L A T  
             F R O M  
                         E C O M M _ W E B P A Y _ T X   W E B T X    
                         I N N E R   J O I N   E C O M M _ W E B P A Y _ P U R C H A S E D _ I T E M S   I T E M S   O N   I T E M S . R E F U N D _ T R A N _ I D   =   W E B T X . I D  
                         L E F T   O U T E R   J O I N   A U T H _ U S E R S   U S E R S   O N   W E B T X . U S E R _ I D   =   U S E R S . I D  
                         L E F T   O U T E R   J O I N   A U T H _ A C C E S S   A C C E S S   O N   A C C E S S . I D   =   I T E M S . A C C E S S _ I D  
                         I N N E R   J O I N   E C O M M _ S I T E   S I T E   O N   S I T E . I D   =   W E B T X . S I T E _ I D                  
                         I N N E R   J O I N   E C O M M _ M E R C H A N T I N F O   M E R C H A N T   o n   W E B T X . M E R C H A N T _ I D   =   M E R C H A N T . I D 	  
 	 W H E R E   ( 1 = 1 ) '  
  
 S E T   @ C O N D I T I O N   =   @ C O N D I T I O N   +   '   A N D   W E B T X . O R G _ R E F _ N U M   =   ' ' '   +   @ T R A N S A C T I O N _ R E F _ N U M   +   ' ' ' '  
 I F   ( @ S I T E _ N A M E   I S   N O T   N U L L   A N D   @ S I T E _ N A M E   < >   ' ' )  
 	 S E T   @ C O N D I T I O N   =   @ C O N D I T I O N   +   '   A N D   S I T E . N A M E   =   ' ' '   +     @ S I T E _ N A M E   +   ' ' ' '  
 S E T   @ S Q L   =   @ S Q L   +   @ C O N D I T I O N    
 P R I N T   @ S Q L  
 E x e c u t e   S P _ E X E C U T E S Q L     @ S Q L  
 E N D  
 G O  
 