    import java.util.*;
    public class test {
        public static void main(String[] args) {
            Scanner in = new Scanner(System.in);
            Deque<Integer> deque = new  ArrayDeque<>();
            int n = in.nextInt();
            int m = in.nextInt();
            for (int i = 0; i < n; i++) {
                int num = in.nextInt();
             deque.add(num);
            }
            int a[]=new int[n];
           for(int i=0;i<n;i++){
               a[i]=deque.getFirst();
             deque.removeFirst();
          }
           int c=0;
           for(int i=0;i<n-(m-1);i++){
               int c1=0;
               int ar[]=new int[m];
               for(int j=0;j<m;j++){
                   ar[j]=a[i+j]; 
               }
               for(int j=0;j<m;j++){
                   int c2=0;
                   for(int k=j+1;k<m;k++){
                       if(ar[k]==ar[j]){
                           ar[j+1]=ar[k]+ar[j+1];
                           ar[k]=ar[j+1]-ar[k];
                           ar[j+1]=ar[j+1]-ar[k];
                    c2++;
                       }
                   }
                   c1++;
                   j=j+c2;
               }
               if(c1>c)
               c=c1;
                
           }
           System.out.println(c);
        }
    }



