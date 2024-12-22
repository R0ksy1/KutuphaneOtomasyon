
package com.VeriTabaniProject.arayuz;

/**
 *
 *
 */
public class KodlayanHakkinda extends javax.swing.JFrame {

    /**
     * Creates new form KodlayanHakkinda
     */
    public KodlayanHakkinda() {
        initComponents();
        this.setTitle("Kodlayan Hakkında"); 
        //this sınıfın kendini gösterir. Pencerenin başlığını ayarladık.
        this.setResizable(false); //Pencerenin boyutlanabilir özelliğini ayarladık.
        this.setSize(425, 400); //Pencerenin boyutunu ayarladık.
        setLocationRelativeTo(null); //Pencereyi ekrana göre ortalar.
        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE); //Pencere kapatıldığında tüm programı kapatmayacak.
    }

    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jTextField3 = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jTextField4 = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(null);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 16)); // NOI18N
        jLabel1.setText("Programı Kodlayan Kişinin Adı :");
        getContentPane().add(jLabel1);
        jLabel1.setBounds(76, 38, 255, 20);

        jTextField1.setEditable(false);
        jTextField1.setFont(new java.awt.Font("Tahoma", 0, 16)); // NOI18N
        jTextField1.setText("Semih-Eren-Yiğit");
        jTextField1.setToolTipText("Programı Kodlayan Kişi");
        jTextField1.setFocusable(false);
        getContentPane().add(jTextField1);
        jTextField1.setBounds(76, 66, 214, 30);

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 16)); // NOI18N
        jLabel2.setText("Öğrenci Numarası :");
        getContentPane().add(jLabel2);
        jLabel2.setBounds(76, 110, 155, 20);

        jTextField2.setEditable(false);
        jTextField2.setFont(new java.awt.Font("Tahoma", 0, 16)); // NOI18N
        jTextField2.setText("G22121003-090-093");
        jTextField2.setToolTipText("Öğrenci Numarası");
        jTextField2.setFocusable(false);
        getContentPane().add(jTextField2);
        jTextField2.setBounds(76, 141, 214, 30);

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 16)); // NOI18N
        jLabel3.setText("Okuduğu Okul :");
        getContentPane().add(jLabel3);
        jLabel3.setBounds(80, 180, 126, 20);

        jTextField3.setEditable(false);
        jTextField3.setFont(new java.awt.Font("Tahoma", 0, 16)); // NOI18N
        jTextField3.setText("Sakarya Üniversitesi");
        jTextField3.setToolTipText("Okuduğu Okul");
        jTextField3.setFocusable(false);
        getContentPane().add(jTextField3);
        jTextField3.setBounds(76, 213, 214, 30);

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 16)); // NOI18N
        jLabel4.setText("Okuduğu Bölüm :");
        getContentPane().add(jLabel4);
        jLabel4.setBounds(76, 257, 140, 20);

        jTextField4.setEditable(false);
        jTextField4.setFont(new java.awt.Font("Tahoma", 0, 16)); // NOI18N
        jTextField4.setText("Bilgisayar Mühendisliği");
        jTextField4.setToolTipText("Okuduğu Bölüm");
        jTextField4.setFocusable(false);
        getContentPane().add(jTextField4);
        jTextField4.setBounds(76, 288, 214, 30);

        jLabel5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/VeriTabaniProject/arayuz/back_1.png"))); // NOI18N
        getContentPane().add(jLabel5);
        jLabel5.setBounds(0, 0, 430, 410);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(KodlayanHakkinda.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(KodlayanHakkinda.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(KodlayanHakkinda.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(KodlayanHakkinda.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new KodlayanHakkinda().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    // End of variables declaration//GEN-END:variables
}
