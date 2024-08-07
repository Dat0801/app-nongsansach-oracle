/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GUI;

import DAO.NhaCungCapDAO;
import DTO.NhaCungCap;
import Main.FontOptionPane;
import java.awt.CardLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.util.ArrayList;
import javax.swing.JDialog;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import javax.swing.table.TableRowSorter;

/**
 *
 * @author Admin
 */
public class NhaCungCapJPanel extends javax.swing.JPanel {

    /**
     * Creates new form NhaCungCapJPanel
     */
    public NhaCungCapJPanel() {
        initComponents();
        FontOptionPane.setUIFont();
        LoadNCCVaoTable(jtNhaCungCap, jpnView,jspNhaCungCap,1);
    }
    ArrayList<NhaCungCap> listNCC;
    void LoadNCCVaoTable(JTable jt, JPanel jpn, JScrollPane jsp, int trangthai) {
        String[] header = {"Mã nhà cung cấp", "Tên nhà cung cấp", "SDT", "Địa chỉ"};
        if (jt == null && jpn == null && jsp == null) {
            jt = jtNhaCungCap;
            jpn = jpnView;
            jsp = jspNhaCungCap;
        }
        listNCC = NhaCungCapDAO.getInstance().getListNhaCungCap(trangthai);
        DefaultTableModel modelTableDb = new DefaultTableModel(header, 0) {
            @Override
            public boolean isCellEditable(int rowIndex, int colIndex) {
                return false;
            }

        };

        for (NhaCungCap ncc : listNCC) {
            Object[] row = {ncc.getMaNCC(), ncc.getTenNCC(), ncc.getSDT(), ncc.getDiaChi()};
            modelTableDb.addRow(row);
        }

        TableRowSorter<TableModel> rowSorter = null;

        jt.setModel(modelTableDb);
        jt.setRowSorter(rowSorter);

        jt.getTableHeader().setFont(new Font("Arial", Font.BOLD, 14));
        jt.setFont(new Font("Arial", Font.PLAIN, 14));
        jt.getTableHeader().setPreferredSize(new Dimension(100, 50));
        jt.setRowHeight(50);
        jt.validate();
        jt.repaint();

        jsp.setPreferredSize(new Dimension(1350, 400));

        jpn.removeAll();
        jpn.setLayout(new CardLayout());
        jpn.add(jsp);
        jpn.validate();
        jpn.repaint();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jtbQuanLyNCC = new javax.swing.JTabbedPane();
        jpnQuanLyNCC = new javax.swing.JPanel();
        jtfSearch = new javax.swing.JTextField();
        btnXoa = new javax.swing.JButton();
        jpnView = new javax.swing.JPanel();
        jspNhaCungCap = new javax.swing.JScrollPane();
        jtNhaCungCap = new javax.swing.JTable();
        btnThem = new javax.swing.JButton();
        jpnKhoiPhucNCC = new javax.swing.JPanel();
        jpnViewKhoiPhuc = new javax.swing.JPanel();
        jspNhaCungCapKhoiPhuc = new javax.swing.JScrollPane();
        jtNhaCungCapKhoiPhuc = new javax.swing.JTable();
        btnXoaVinhVien = new javax.swing.JButton();
        btnKhoiPhuc = new javax.swing.JButton();

        jtbQuanLyNCC.setFont(new java.awt.Font("Arial", 0, 16)); // NOI18N
        jtbQuanLyNCC.addChangeListener(new javax.swing.event.ChangeListener() {
            public void stateChanged(javax.swing.event.ChangeEvent evt) {
                jtbQuanLyNCCStateChanged(evt);
            }
        });

        jtfSearch.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N

        btnXoa.setFont(new java.awt.Font("Arial", 1, 16)); // NOI18N
        btnXoa.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/icon-delete.png"))); // NOI18N
        btnXoa.setText("Xóa");
        btnXoa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnXoaActionPerformed(evt);
            }
        });

        jtNhaCungCap.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jtNhaCungCap.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jtNhaCungCapMouseClicked(evt);
            }
        });
        jspNhaCungCap.setViewportView(jtNhaCungCap);

        javax.swing.GroupLayout jpnViewLayout = new javax.swing.GroupLayout(jpnView);
        jpnView.setLayout(jpnViewLayout);
        jpnViewLayout.setHorizontalGroup(
            jpnViewLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jspNhaCungCap)
        );
        jpnViewLayout.setVerticalGroup(
            jpnViewLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jspNhaCungCap, javax.swing.GroupLayout.DEFAULT_SIZE, 290, Short.MAX_VALUE)
        );

        btnThem.setFont(new java.awt.Font("Arial", 1, 16)); // NOI18N
        btnThem.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/icon-plus.png"))); // NOI18N
        btnThem.setText("Thêm mới");
        btnThem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThemActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jpnQuanLyNCCLayout = new javax.swing.GroupLayout(jpnQuanLyNCC);
        jpnQuanLyNCC.setLayout(jpnQuanLyNCCLayout);
        jpnQuanLyNCCLayout.setHorizontalGroup(
            jpnQuanLyNCCLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 799, Short.MAX_VALUE)
            .addGroup(jpnQuanLyNCCLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jpnQuanLyNCCLayout.createSequentialGroup()
                    .addGap(24, 24, 24)
                    .addGroup(jpnQuanLyNCCLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addGroup(jpnQuanLyNCCLayout.createSequentialGroup()
                            .addComponent(jpnView, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addGap(4, 4, 4))
                        .addGroup(jpnQuanLyNCCLayout.createSequentialGroup()
                            .addComponent(jtfSearch, javax.swing.GroupLayout.PREFERRED_SIZE, 434, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(70, 70, 70)
                            .addComponent(btnXoa)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, 149, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGap(24, 24, 24)))
        );
        jpnQuanLyNCCLayout.setVerticalGroup(
            jpnQuanLyNCCLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 385, Short.MAX_VALUE)
            .addGroup(jpnQuanLyNCCLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jpnQuanLyNCCLayout.createSequentialGroup()
                    .addContainerGap()
                    .addGroup(jpnQuanLyNCCLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addComponent(jtfSearch, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(jpnQuanLyNCCLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(btnXoa, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGap(18, 18, 18)
                    .addComponent(jpnView, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGap(14, 14, 14)))
        );

        jtbQuanLyNCC.addTab("Quản lý nhà cung cấp", jpnQuanLyNCC);

        jtNhaCungCapKhoiPhuc.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jspNhaCungCapKhoiPhuc.setViewportView(jtNhaCungCapKhoiPhuc);

        javax.swing.GroupLayout jpnViewKhoiPhucLayout = new javax.swing.GroupLayout(jpnViewKhoiPhuc);
        jpnViewKhoiPhuc.setLayout(jpnViewKhoiPhucLayout);
        jpnViewKhoiPhucLayout.setHorizontalGroup(
            jpnViewKhoiPhucLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jspNhaCungCapKhoiPhuc)
        );
        jpnViewKhoiPhucLayout.setVerticalGroup(
            jpnViewKhoiPhucLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jspNhaCungCapKhoiPhuc, javax.swing.GroupLayout.DEFAULT_SIZE, 290, Short.MAX_VALUE)
        );

        btnXoaVinhVien.setFont(new java.awt.Font("Arial", 1, 16)); // NOI18N
        btnXoaVinhVien.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/icon-delete-forever.png"))); // NOI18N
        btnXoaVinhVien.setText("Xóa vĩnh viễn");
        btnXoaVinhVien.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnXoaVinhVienActionPerformed(evt);
            }
        });

        btnKhoiPhuc.setFont(new java.awt.Font("Arial", 1, 16)); // NOI18N
        btnKhoiPhuc.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/icon-recycling.png"))); // NOI18N
        btnKhoiPhuc.setText("Khôi phục");
        btnKhoiPhuc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnKhoiPhucActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jpnKhoiPhucNCCLayout = new javax.swing.GroupLayout(jpnKhoiPhucNCC);
        jpnKhoiPhucNCC.setLayout(jpnKhoiPhucNCCLayout);
        jpnKhoiPhucNCCLayout.setHorizontalGroup(
            jpnKhoiPhucNCCLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jpnKhoiPhucNCCLayout.createSequentialGroup()
                .addContainerGap(453, Short.MAX_VALUE)
                .addComponent(btnXoaVinhVien)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btnKhoiPhuc)
                .addGap(32, 32, 32))
            .addGroup(jpnKhoiPhucNCCLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jpnKhoiPhucNCCLayout.createSequentialGroup()
                    .addGap(24, 24, 24)
                    .addComponent(jpnViewKhoiPhuc, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGap(28, 28, 28)))
        );
        jpnKhoiPhucNCCLayout.setVerticalGroup(
            jpnKhoiPhucNCCLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jpnKhoiPhucNCCLayout.createSequentialGroup()
                .addGap(41, 41, 41)
                .addGroup(jpnKhoiPhucNCCLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnXoaVinhVien)
                    .addComponent(btnKhoiPhuc))
                .addContainerGap(311, Short.MAX_VALUE))
            .addGroup(jpnKhoiPhucNCCLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jpnKhoiPhucNCCLayout.createSequentialGroup()
                    .addGap(81, 81, 81)
                    .addComponent(jpnViewKhoiPhuc, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGap(14, 14, 14)))
        );

        jtbQuanLyNCC.addTab("Khôi phục nhà cung cấp", jpnKhoiPhucNCC);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jtbQuanLyNCC)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jtbQuanLyNCC)
        );
    }// </editor-fold>//GEN-END:initComponents
        
    private void btnThemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThemActionPerformed
        // TODO add your handling code here:
        NhaCungCapJFrame frame = new NhaCungCapJFrame(null, this, 1);
        frame.setResizable(false);

        JDialog dialog = new JDialog();
        dialog.setModal(true);
        dialog.getContentPane().add(frame.getContentPane());
        dialog.pack();
        dialog.setLocationRelativeTo(null);
        dialog.setTitle("Thêm nhà cung cấp");
        dialog.setVisible(true);   
    }//GEN-LAST:event_btnThemActionPerformed

    private void jtbQuanLyNCCStateChanged(javax.swing.event.ChangeEvent evt) {//GEN-FIRST:event_jtbQuanLyNCCStateChanged
        // TODO add your handling code here:
        int index = jtbQuanLyNCC.getSelectedIndex();
        if (index == 0) {
            LoadNCCVaoTable(jtNhaCungCap, jpnView, jspNhaCungCap, 1);
        } else {
            LoadNCCVaoTable(jtNhaCungCapKhoiPhuc, jpnViewKhoiPhuc, jspNhaCungCapKhoiPhuc, 0);
        }
    }//GEN-LAST:event_jtbQuanLyNCCStateChanged

    private void jtNhaCungCapMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jtNhaCungCapMouseClicked
        // TODO add your handling code here:
        if (evt.getClickCount() == 2 && jtNhaCungCap.getSelectedRow() != -1) {
            int index = jtNhaCungCap.getSelectedRow();

            NhaCungCap ncc = listNCC.get(index);

            NhaCungCapJFrame frame = new NhaCungCapJFrame(ncc, this, 0);
            frame.setResizable(false);

            JDialog dialog = new JDialog();
            dialog.setModal(true);
            dialog.getContentPane().add(frame.getContentPane());
            dialog.pack();
            dialog.setLocationRelativeTo(null);
            dialog.setTitle("Sửa nhà cung cấp");
            dialog.setVisible(true);
        }
    }//GEN-LAST:event_jtNhaCungCapMouseClicked
    
    private void btnXoaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnXoaActionPerformed
        // TODO add your handling code here:
        try {
            int index = jtNhaCungCap.getSelectedRow();
            NhaCungCap ncc = listNCC.get(index);

            String maNCC = ncc.getMaNCC();
            String tenNCC = ncc.getTenNCC();

            int kq = JOptionPane.showConfirmDialog(null, "Bạn có chắc chắn muốn xóa nhà cung cấp có tên là: " + tenNCC + "?", "Câu hỏi", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
            if (kq == JOptionPane.YES_OPTION) {
                NhaCungCapDAO.getInstance().deleteNhaCungCap(maNCC);
            }
            listNCC.remove(index);
            LoadNCCVaoTable(jtNhaCungCap, jpnView, jspNhaCungCap, 1);
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Vui lòng chọn nhà cung cấp muốn xóa!", "Cảnh báo", JOptionPane.WARNING_MESSAGE);
        }
    }//GEN-LAST:event_btnXoaActionPerformed

    private void btnXoaVinhVienActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnXoaVinhVienActionPerformed
        // TODO add your handling code here:
        try {
            int index = jtNhaCungCapKhoiPhuc.getSelectedRow();

            NhaCungCap ncc = listNCC.get(index);

            String maNCC = ncc.getMaNCC();
            String tenNCC = ncc.getTenNCC();

            int kq = JOptionPane.showConfirmDialog(null, "Bạn có chắc chắn muốn xóa vĩnh viễn hàng hóa có tên là: " + tenNCC + "?", "Câu hỏi", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
            if (kq == JOptionPane.YES_OPTION) {
                NhaCungCapDAO.getInstance().deletePermanentNhaCungCap(maNCC);
            }
            listNCC.remove(index);
            LoadNCCVaoTable(jtNhaCungCapKhoiPhuc, jpnViewKhoiPhuc, jspNhaCungCapKhoiPhuc, 0);
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Vui lòng chọn nhà cung cấp muốn xóa vĩnh viễn!", "Cảnh báo", JOptionPane.WARNING_MESSAGE);
        }
    }//GEN-LAST:event_btnXoaVinhVienActionPerformed

    private void btnKhoiPhucActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnKhoiPhucActionPerformed
        // TODO add your handling code here:
        try {
            int index = jtNhaCungCapKhoiPhuc.getSelectedRow();

            NhaCungCap ncc = listNCC.get(index);

            NhaCungCapDAO.getInstance().recoveryNhaCungCap(ncc.getMaNCC());

            listNCC.remove(index);
            LoadNCCVaoTable(jtNhaCungCapKhoiPhuc, jpnViewKhoiPhuc, jspNhaCungCapKhoiPhuc, 0);
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Vui lòng chọn nhà cung cấp muốn khôi phục!", "Cảnh báo", JOptionPane.WARNING_MESSAGE);
        }
    }//GEN-LAST:event_btnKhoiPhucActionPerformed

    
        
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnKhoiPhuc;
    private javax.swing.JButton btnThem;
    private javax.swing.JButton btnXoa;
    private javax.swing.JButton btnXoaVinhVien;
    private javax.swing.JPanel jpnKhoiPhucNCC;
    private javax.swing.JPanel jpnQuanLyNCC;
    private javax.swing.JPanel jpnView;
    private javax.swing.JPanel jpnViewKhoiPhuc;
    private javax.swing.JScrollPane jspNhaCungCap;
    private javax.swing.JScrollPane jspNhaCungCapKhoiPhuc;
    private javax.swing.JTable jtNhaCungCap;
    private javax.swing.JTable jtNhaCungCapKhoiPhuc;
    private javax.swing.JTabbedPane jtbQuanLyNCC;
    private javax.swing.JTextField jtfSearch;
    // End of variables declaration//GEN-END:variables
}
