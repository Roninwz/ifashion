package com.zua.ifashion.util;

import java.util.List;

public class ListUtil {
	public   static   List  removeDuplicate(List list)  {       
		  for  ( int  i  =   0 ; i  <  list.size()  -   1 ; i ++ )  {       
		      for  ( int  j  =  list.size()  -   1 ; j  >  i; j -- )  {       
		           if  (list.get(j).equals(list.get(i)))  {       
		              list.remove(j);       
		            }        
		        }        
		      }        
		    return list;       
		}  
}
