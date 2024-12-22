
package com.VeriTabaniProject.arayuz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.Vector;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 *
 */

public class AnaEkran extends javax.swing.JFrame {

    public AnaEkran() {
        initComponents();
        baglan();
        Table();
        this.setTitle("KÜTÜPHANE OTOMASYONU"); //this sınıfın kendini gösterir. Pencerenin başlığını ayarladık.
        this.setResizable(false); //Pencerenin boyutlanabilir özelliğini ayarladık.
        this.setSize(1100, 699); //Pencerenin boyutunu ayarladık.
        setLocationRelativeTo(null); //Pencereyi ekrana göre ortalar.
        
    }
    
    public Connection con; //Connection sınıfından con diye bir nesne oluşturduk.
    
    public void baglan()
    {
        try {
            Class.forName("org.postgresql.Driver").newInstance(); //Veri tabanı bağlantısı için sürücü yüklemesi yapar.
            //Bağlanacak olduğumuz veritabanının url'sini yazdık devamında kullanıcı adımızı ve şifremizi yazdık.
            con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/kutuphane", "postgres", "1234"); 
        
            System.out.println("Veritabanı Bağlatısı Başarılı."); //Eğer veritabanı bağlantısı başarılı olursa konsola bu yazı yazdırılır.
        } 
        catch (Exception ex) {
            System.out.println(ex); //Oluşan hatayı konsola yazdırılacak.
            System.out.println("Veritabanı Bağlatısı Başarısız."); //Eğer veritabanı bağlantısı başarısız olursa konsola bu yazı yazdırılır.
        }
        
    }
    
    public void Table() 
    {
        try 
        {
            PreparedStatement pst =con.prepareStatement("Select * from kitaplar"); //Oluşturduğumuz nesnemiz üzerinden veritabanımızda sorgulama yazpıyoruz.
            ResultSet Rs = pst.executeQuery(); //Sorgumuzu çalıştırıyoruz.
            DefaultTableModel model = (DefaultTableModel) jTable1.getModel();
            
            ResultSetMetaData RSMD = Rs.getMetaData();
            int CC = RSMD.getColumnCount();
            DefaultTableModel DFT = (DefaultTableModel) jTable1.getModel();
            DFT.setRowCount(0);
            
            while (Rs.next())
            {
                Vector v2 = new Vector();
                
                for (int ii = 1; ii < CC; ii++) {
                    v2.add(Rs.getInt("kitap_id"));
                    v2.add(Rs.getString("kitap_adi"));
                    v2.add(Rs.getString("yazar_adi"));
                    v2.add(Rs.getString("kitaptur_adi"));
                }
                DFT.addRow(v2);
            }
                jTable1.setModel(model);
        }
        catch (Exception ex)
        {
            System.out.println(ex); //Oluşan hatayı konsola yazdırılacak.
        }
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        txt_ad = new javax.swing.JTextField();
        txt_yazar = new javax.swing.JTextField();
        txt_tur = new javax.swing.JTextField();
        btn_ekle = new javax.swing.JButton();
        btn_guncelle = new javax.swing.JButton();
        btn_sil = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        btn_ara = new javax.swing.JButton();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jMenuBar1 = new javax.swing.JMenuBar();
        jMenu1 = new javax.swing.JMenu();
        ph = new javax.swing.JMenuItem();
        kh = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(null);

        jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel1.setText("Yazar Adı :");
	jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        getContentPane().add(jLabel1);
        jLabel1.setBounds(100, 220, 91, 44);

        jLabel2.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel2.setText("Kitabın Türü :");
	jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        getContentPane().add(jLabel2);
        jLabel2.setBounds(70, 270, 119, 44);

        jLabel3.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel3.setText("Kitap Adı :");
	jLabel3.setForeground(new java.awt.Color(255, 255, 255));
        getContentPane().add(jLabel3);
        jLabel3.setBounds(100, 160, 89, 44);

        txt_ad.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        txt_ad.setToolTipText("Kitap Adı");
        getContentPane().add(txt_ad);
        txt_ad.setBounds(210, 170, 170, 31);

        txt_yazar.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        txt_yazar.setToolTipText("Yazar Adı");
        getContentPane().add(txt_yazar);
        txt_yazar.setBounds(210, 220, 170, 31);

        txt_tur.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        txt_tur.setToolTipText("Kitap Türü");
        getContentPane().add(txt_tur);
        txt_tur.setBounds(210, 280, 170, 31);

        btn_ekle.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        btn_ekle.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/VeriTabaniProject/arayuz/book.png"))); // NOI18N
        btn_ekle.setText("    Ekle");
        btn_ekle.setToolTipText("Ekle");
        btn_ekle.setAlignmentX(0.5F);
        btn_ekle.setDisabledIcon(null);
        btn_ekle.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
	btn_ekle.setBackground(new java.awt.Color(46, 204, 113));
        btn_ekle.setForeground(new java.awt.Color(255, 255, 255));
        btn_ekle.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_ekleActionPerformed(evt);
            }
        });
        getContentPane().add(btn_ekle);
        btn_ekle.setBounds(210, 360, 170, 51);

        btn_guncelle.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        btn_guncelle.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/VeriTabaniProject/arayuz/refresh.png"))); // NOI18N
        btn_guncelle.setText("  Güncelle");
        btn_guncelle.setToolTipText("Güncelle");
        btn_guncelle.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
 	btn_guncelle.setBackground(new java.awt.Color(230, 126, 34));
        btn_guncelle.setForeground(new java.awt.Color(255, 255, 255));
        btn_guncelle.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_guncelleActionPerformed(evt);
            }
        });
        getContentPane().add(btn_guncelle);
        btn_guncelle.setBounds(210, 420, 170, 51);

        btn_sil.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        btn_sil.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/VeriTabaniProject/arayuz/book (1).png"))); // NOI18N
        btn_sil.setText("     Sil");
        btn_sil.setToolTipText("Sil");
        btn_sil.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
	btn_sil.setBackground(new java.awt.Color(192, 57, 43));
        btn_sil.setForeground(new java.awt.Color(255, 255, 255));
        btn_sil.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_silActionPerformed(evt);
            }
        });
        getContentPane().add(btn_sil);
        btn_sil.setBounds(210, 490, 170, 51);

        jTable1.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID", "Kitabın Adı", "Yazar Adı", "Kitabın Türü"
            }
        ));
        jTable1.setToolTipText("Kitaplar");
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable1MouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);

        getContentPane().add(jScrollPane1);
        jScrollPane1.setBounds(470, 150, 565, 453);

        btn_ara.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        btn_ara.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/VeriTabaniProject/arayuz/search.png"))); // NOI18N
        btn_ara.setText("      Ara");
        btn_ara.setToolTipText("Ara");
        btn_ara.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
	btn_ara.setBackground(new java.awt.Color(52, 152, 219));
        btn_ara.setForeground(new java.awt.Color(255, 255, 255));
        btn_ara.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_araActionPerformed(evt);
            }
        });
        getContentPane().add(btn_ara);
        btn_ara.setBounds(210, 550, 170, 51);

        jLabel4.setFont(new java.awt.Font("Gill Sans", 3, 36)); // NOI18N
        jLabel4.setText("Kütüphane Otomasyonu");
	jLabel4.setForeground(new java.awt.Color(255, 255, 255));
        getContentPane().add(jLabel4);
        jLabel4.setBounds(290, 40, 488, 82);

        jLabel5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/VeriTabaniProject/arayuz/back_1.png"))); // NOI18N
        getContentPane().add(jLabel5);
        jLabel5.setBounds(0, 0, 1091, 743);

        jMenu1.setText("Hakkında");

        ph.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_P, java.awt.event.InputEvent.CTRL_DOWN_MASK));
        ph.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/VeriTabaniProject/arayuz/info.png"))); // NOI18N
        ph.setText("Program Hakkında");
        ph.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                phActionPerformed(evt);
            }
        });
        jMenu1.add(ph);

        kh.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_K, java.awt.event.InputEvent.CTRL_DOWN_MASK));
        kh.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/VeriTabaniProject/arayuz/question.png"))); // NOI18N
        kh.setText("Kodlayan Hakkında");
        kh.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                khActionPerformed(evt);
            }
        });
        jMenu1.add(kh);

        jMenuBar1.add(jMenu1);

        setJMenuBar(jMenuBar1);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_ekleActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_ekleActionPerformed
        //Değişkenlerimizi oluşturduk.
        String Kadi, Yadi, Ktur;
        
        //TextField'larımızıdaki girilen değerleri okuyup oluşturduğumuz değişkenlerimize atadık.
        Kadi = txt_ad.getText();
        Yadi = txt_yazar.getText();
        Ktur = txt_tur.getText();
                
        try
        {
            //Veritabanı üzerinde yeni kayıt ekleme işlemi yapmak için sql sorgumuzu nesnemiz üzerinden veritabanına gönderiyoruz.
            PreparedStatement pst = con.prepareStatement("insert into kitaplar (kitap_adi, yazar_adi, kitaptur_adi) values (?,?,?)"); 
            pst.setString(1, Kadi);
            pst.setString(2, Yadi);
            pst.setString(3, Ktur);
            pst.executeUpdate();
            Table();
            txt_ad.setText(""); //İşlem sonrasında textField'ımızı boş bırakıyoruz.
            txt_yazar.setText(""); //İşlem sonrasında textField'ımızı boş bırakıyoruz.
            txt_tur.setText(""); //İşlem sonrasında textField'ımızı boş bırakıyoruz.
            txt_ad.requestFocus(); //İşlem sonrasında txt_ad isimli textField'ımıza odaklıyoruz.
            JOptionPane.showMessageDialog(this, "Kayıt Başarılı"); //Kayıt başarılı bir şekilde kaydedilirse ekrana bu uyarı çıkacak.
            
        }
        catch(Exception ex)
        {
            System.out.println(ex); //Oluşan hatayı konsola yazdırılacak.
            JOptionPane.showMessageDialog(this, "Kayıt Başarısız"); //Kayıt başarısız olursa ekrana bu uyarı çıkacak.
        }
        
    }//GEN-LAST:event_btn_ekleActionPerformed

    private void btn_guncelleActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_guncelleActionPerformed
        //Değişkenlerimizi oluşturuyoruz.
        String Kadi, Yadi, Ktur;
        
        DefaultTableModel model=(DefaultTableModel) jTable1.getModel();
        int selectedIndex = jTable1.getSelectedRow();
        
        int kitap_id = Integer.parseInt(model.getValueAt(selectedIndex, 0).toString());
        
        //TextField'larımızıdaki girilen değerleri okuyup oluşturduğumuz değişkenlerimize atadık.
        Kadi = txt_ad.getText();
        Yadi = txt_yazar.getText();
        Ktur = txt_tur.getText();
        
        try 
        {
            //Veritabanı üzerinde güncelleme işlemi yapmak için sql sorgumuzu nesnemiz üzerinden veritabanına gönderiyoruz.
            PreparedStatement pst = con.prepareStatement("update kitaplar set kitap_adi=?, yazar_adi=?, kitaptur_adi=? where kitap_id=?");
            pst.setString(1, Kadi);
            pst.setString(2, Yadi);
            pst.setString(3, Ktur);
            pst.setInt(4, kitap_id);
            pst.executeUpdate();
            Table();
            txt_ad.setText(""); //İşlem sonrasında textField'ımızı boş bırakıyoruz.
            txt_yazar.setText(""); //İşlem sonrasında textField'ımızı boş bırakıyoruz.
            txt_tur.setText(""); //İşlem sonrasında textField'ımızı boş bırakıyoruz.
            txt_ad.requestFocus(); //İşlem sonrasında txt_ad isimli textField'ımıza odaklıyoruz.
            JOptionPane.showMessageDialog(this, "Güncelleme Başarılı"); //Güncelleme işlemi başarılı bir şekilde kaydedilirse ekrana bu uyarı çıkacak.
        }
        catch(Exception ex)
        {
            System.out.println(ex); //Oluşan hatayı konsola yazdırılacak.
            JOptionPane.showMessageDialog(this, "Güncelleme İşlemi Başarısız"); //Güncelleme işlemi başarısız olursa ekrana bu uyarı çıkacak.
        }
    }//GEN-LAST:event_btn_guncelleActionPerformed

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked
        //Tablo üzerinde herhangi bir değere tıklandığında yapılması gereken işlemleri yaptırıyoruz.
        DefaultTableModel model = (DefaultTableModel) jTable1.getModel();
        int selectedIndex = jTable1.getSelectedRow();
        
        int id = Integer.parseInt(model.getValueAt(selectedIndex, 0).toString());
        //Tablo üzerinde tıklanan kitabın bilgilerini textField'larımıza yazdırıyoruz.
        txt_ad.setText(model.getValueAt(selectedIndex, 1).toString()); 
        txt_yazar.setText(model.getValueAt(selectedIndex, 2).toString());
        txt_tur.setText(model.getValueAt(selectedIndex, 3).toString());
    }//GEN-LAST:event_jTable1MouseClicked

    private void btn_silActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_silActionPerformed

        DefaultTableModel model=(DefaultTableModel) jTable1.getModel();
        int selectedIndex = jTable1.getSelectedRow();
        
        int kitap_id = Integer.parseInt(model.getValueAt(selectedIndex, 0).toString());
   
        try 
        {
            //Veritabanı üzerinde silme işlemi yapmak için sql sorgumuzu nesnemiz üzerinden veritabanına gönderiyoruz.
            PreparedStatement pst = con.prepareStatement("delete from kitaplar where kitap_id=?");
            
            pst.setInt(1, kitap_id);
            pst.executeUpdate();
            Table();
            txt_ad.setText(""); //İşlem sonrasında textField'ımızı boş bırakıyoruz.
            txt_yazar.setText(""); //İşlem sonrasında textField'ımızı boş bırakıyoruz.
            txt_tur.setText(""); //İşlem sonrasında textField'ımızı boş bırakıyoruz.
            txt_ad.requestFocus(); //İşlem sonrasında txt_ad isimli textField'ımıza odaklıyoruz.
            JOptionPane.showMessageDialog(this, "Silme İşlemi Başarılı"); //Silme işlemi başarılı bir şekilde kaydedilirse ekrana bu uyarı çıkacak.
        }
        catch(Exception ex)
        {
            System.out.println(ex); //Oluşan hatayı konsola yazdırılacak.
            JOptionPane.showMessageDialog(this, "Silme İşlemi Başarısız"); //Silme işlemi başarısız olursa ekrana bu uyarı çıkacak.
        }
    }//GEN-LAST:event_btn_silActionPerformed

    private void btn_araActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_araActionPerformed
        
        String Kadi = txt_ad.getText(); //Değişkenimizi oluşturduk ve txt_ad isimli textField'ımıza girilen değeri okuyup atama işlemini yaptık.
        
        try
        {
            //Veritabanı üzerinde arama işlemini yapmak için sql sorgumuzu nesnemiz üzerinden veritabanına gönderiyoruz.
            PreparedStatement pst = con.prepareStatement("select * from kitaplar where kitap_adi=?");
            pst.setString(1, Kadi);
            ResultSet rs = pst.executeQuery();
            
            if (rs.next()==false) 
            {
                JOptionPane.showMessageDialog(this, "Kitap Bulunamadı"); //Veritabanında kitap yok ise bu uyarı mesajı ekranda gösterilecek.
            }
            else //Eğer aranan kitap veritabanında var ise bu kod bloğu çalışacak.
            {
                //Veritabanından ilgili kitabın bilgilerini aldık ve tanımladığımız değişkenlerimize atadık.
                String  a = rs.getString("yazar_adi");
                String  b = rs.getString("kitaptur_adi");
              
                //Değişkenlerimizi ilgili textField'larımıza yazdırıyoruz.
                txt_yazar.setText(a);
                txt_tur.setText(b);
            }
        }
        catch (Exception ex)
        {
            System.out.println(ex); //Oluşan hatayı konsola yazdırılacak.
            
        }
    }//GEN-LAST:event_btn_araActionPerformed

    private void phActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_phActionPerformed
        //Program Hakkında sekmesine tıklandığı zaman açılacak olan jFrame'mimizi tanımlıyoruz.
        ProgramHakkinda ph=new ProgramHakkinda();
        ph.setVisible(true);
    }//GEN-LAST:event_phActionPerformed

    private void khActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_khActionPerformed
        //Kodlayan Hakkında sekmesine tıklandığı zaman açılacak olan jFrame'mimizi tanımlıyoruz.
        KodlayanHakkinda kh=new KodlayanHakkinda();
        kh.setVisible(true);
    }//GEN-LAST:event_khActionPerformed

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
            java.util.logging.Logger.getLogger(AnaEkran.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(AnaEkran.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AnaEkran.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AnaEkran.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new AnaEkran().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_ara;
    private javax.swing.JButton btn_ekle;
    private javax.swing.JButton btn_guncelle;
    private javax.swing.JButton btn_sil;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JMenuItem kh;
    private javax.swing.JMenuItem ph;
    private javax.swing.JTextField txt_ad;
    private javax.swing.JTextField txt_tur;
    private javax.swing.JTextField txt_yazar;
    // End of variables declaration//GEN-END:variables
}