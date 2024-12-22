
package com.VeriTabaniProject.arayuz;

/**
 *
 *
 */
public class ProgramHakkinda extends javax.swing.JFrame {

    /**
     * Creates new form ProgramHakkinda
     */
    public ProgramHakkinda() {
        initComponents();
        this.setTitle("Program Hakkında"); 
        //this sınıfın kendini gösterir. Pencerenin başlığını ayarladık.
        this.setResizable(false); //Pencerenin boyutlanabilir özelliğini ayarladık.
        this.setSize(420, 325); //Pencerenin boyutunu ayarladık.
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

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(null);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 16)); // NOI18N
        jLabel1.setText("Programın Adı :");
        getContentPane().add(jLabel1);
        jLabel1.setBounds(73, 41, 126, 20);

        jTextField1.setEditable(false);
        jTextField1.setFont(new java.awt.Font("Tahoma", 0, 16)); // NOI18N
        jTextField1.setText("Kütüphanesi Otomasyonu");
        jTextField1.setToolTipText("Programın Adı");
        jTextField1.setFocusable(false);
        getContentPane().add(jTextField1);
        jTextField1.setBounds(73, 69, 270, 30);

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 16)); // NOI18N
        jLabel2.setText("Versiyon :");
        getContentPane().add(jLabel2);
        jLabel2.setBounds(73, 110, 81, 20);

        jTextField2.setEditable(false);
        jTextField2.setFont(new java.awt.Font("Tahoma", 0, 16)); // NOI18N
        jTextField2.setText("V 1.0");
        jTextField2.setToolTipText("Versiyon");
        jTextField2.setFocusable(false);
        getContentPane().add(jTextField2);
        jTextField2.setBounds(73, 138, 270, 30);

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 16)); // NOI18N
        jLabel3.setText("Kodlama Tarihi : ");
        getContentPane().add(jLabel3);
        jLabel3.setBounds(73, 179, 137, 20);

        jTextField3.setEditable(false);
        jTextField3.setFont(new java.awt.Font("Tahoma", 0, 16)); // NOI18N
        jTextField3.setText("20.12.2024");
        jTextField3.setToolTipText("Kodlama Tarihi");
        jTextField3.setFocusable(false);
        getContentPane().add(jTextField3);
        jTextField3.setBounds(73, 207, 270, 30);

        jLabel4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/VeriTabaniProject/arayuz/back_1.png"))); // NOI18N
        getContentPane().add(jLabel4);
        jLabel4.setBounds(0, 0, 420, 300);

        pack();
    }// </editor-fold>//GEN-END:initComponents


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
            java.util.logging.Logger.getLogger(ProgramHakkinda.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ProgramHakkinda.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ProgramHakkinda.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ProgramHakkinda.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ProgramHakkinda().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    // End of variables declaration//GEN-END:variables
}
