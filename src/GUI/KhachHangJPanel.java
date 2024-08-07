/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GUI;

import DAO.KhachHangDAO;
import DTO.KhachHang;
import Main.FontOptionPane;
import java.awt.CardLayout;
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
public class KhachHangJPanel extends javax.swing.JPanel {

    public JDialog dialog;

    /**
     * Creates new form KhachHangJPanel
     */
    public KhachHangJPanel() {
        initComponents();
        FontOptionPane.setUIFont();
        LoadKHVaoTable(jtKhachHang, jpnView, jspKhachHang, 1, null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jtbQuanLyKH = new javax.swing.JTabbedPane();
        jpnQuanLyKH = new javax.swing.JPanel();
        jtfSearch = new javax.swing.JTextField();
        btnXoa = new javax.swing.JButton();
        jpnView = new javax.swing.JPanel();
        jspKhachHang = new javax.swing.JScrollPane();
        jtKhachHang = new javax.swing.JTable();
        btnThem = new javax.swing.JButton();
        btnTimKiem = new javax.swing.JButton();
        jpnKhoiPhucKH = new javax.swing.JPanel();
        jpnViewKhoiPhuc = new javax.swing.JPanel();
        jspKhachHangKhoiPhuc = new javax.swing.JScrollPane();
        jtKhachHangKhoiPhuc = new javax.swing.JTable();
        btnKhoiPhuc = new javax.swing.JButton();

        jtbQuanLyKH.setFont(new java.awt.Font("Arial", 0, 16)); // NOI18N
        jtbQuanLyKH.addChangeListener(new javax.swing.event.ChangeListener() {
            public void stateChanged(javax.swing.event.ChangeEvent evt) {
                jtbQuanLyKHStateChanged(evt);
            }
        });

        jtfSearch.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jtfSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jtfSearchActionPerformed(evt);
            }
        });

        btnXoa.setFont(new java.awt.Font("Arial", 1, 16)); // NOI18N
        btnXoa.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/icon-delete.png"))); // NOI18N
        btnXoa.setText("Xóa");
        btnXoa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnXoaActionPerformed(evt);
            }
        });

        jtKhachHang.setModel(new javax.swing.table.DefaultTableModel(
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
        jtKhachHang.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jtKhachHangMouseClicked(evt);
            }
        });
        jspKhachHang.setViewportView(jtKhachHang);

        javax.swing.GroupLayout jpnViewLayout = new javax.swing.GroupLayout(jpnView);
        jpnView.setLayout(jpnViewLayout);
        jpnViewLayout.setHorizontalGroup(
            jpnViewLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jspKhachHang)
        );
        jpnViewLayout.setVerticalGroup(
            jpnViewLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jspKhachHang, javax.swing.GroupLayout.DEFAULT_SIZE, 664, Short.MAX_VALUE)
        );

        btnThem.setFont(new java.awt.Font("Arial", 1, 16)); // NOI18N
        btnThem.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/icon-plus.png"))); // NOI18N
        btnThem.setText("Thêm mới");
        btnThem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThemActionPerformed(evt);
            }
        });

        btnTimKiem.setFont(new java.awt.Font("Arial", 1, 16)); // NOI18N
        btnTimKiem.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/icon-search.png"))); // NOI18N
        btnTimKiem.setText("Tìm kiếm");
        btnTimKiem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnTimKiemActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jpnQuanLyKHLayout = new javax.swing.GroupLayout(jpnQuanLyKH);
        jpnQuanLyKH.setLayout(jpnQuanLyKHLayout);
        jpnQuanLyKHLayout.setHorizontalGroup(
            jpnQuanLyKHLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jpnQuanLyKHLayout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addComponent(jtfSearch, javax.swing.GroupLayout.PREFERRED_SIZE, 434, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(15, 15, 15)
                .addComponent(btnTimKiem)
                .addContainerGap(634, Short.MAX_VALUE))
            .addGroup(jpnQuanLyKHLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jpnQuanLyKHLayout.createSequentialGroup()
                    .addGap(24, 24, 24)
                    .addGroup(jpnQuanLyKHLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addGroup(jpnQuanLyKHLayout.createSequentialGroup()
                            .addComponent(jpnView, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addGap(4, 4, 4))
                        .addGroup(jpnQuanLyKHLayout.createSequentialGroup()
                            .addGap(0, 0, Short.MAX_VALUE)
                            .addComponent(btnXoa)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, 149, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGap(24, 24, 24)))
        );
        jpnQuanLyKHLayout.setVerticalGroup(
            jpnQuanLyKHLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jpnQuanLyKHLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jpnQuanLyKHLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jtfSearch, javax.swing.GroupLayout.DEFAULT_SIZE, 50, Short.MAX_VALUE)
                    .addComponent(btnTimKiem, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(696, Short.MAX_VALUE))
            .addGroup(jpnQuanLyKHLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jpnQuanLyKHLayout.createSequentialGroup()
                    .addContainerGap()
                    .addGroup(jpnQuanLyKHLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(btnXoa, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGap(18, 18, 18)
                    .addComponent(jpnView, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGap(14, 14, 14)))
        );

        jtbQuanLyKH.addTab("Quản lý khách hàng", jpnQuanLyKH);

        jtKhachHangKhoiPhuc.setModel(new javax.swing.table.DefaultTableModel(
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
        jspKhachHangKhoiPhuc.setViewportView(jtKhachHangKhoiPhuc);

        javax.swing.GroupLayout jpnViewKhoiPhucLayout = new javax.swing.GroupLayout(jpnViewKhoiPhuc);
        jpnViewKhoiPhuc.setLayout(jpnViewKhoiPhucLayout);
        jpnViewKhoiPhucLayout.setHorizontalGroup(
            jpnViewKhoiPhucLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jspKhachHangKhoiPhuc)
        );
        jpnViewKhoiPhucLayout.setVerticalGroup(
            jpnViewKhoiPhucLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jspKhachHangKhoiPhuc, javax.swing.GroupLayout.DEFAULT_SIZE, 664, Short.MAX_VALUE)
        );

        btnKhoiPhuc.setFont(new java.awt.Font("Arial", 1, 16)); // NOI18N
        btnKhoiPhuc.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/icon-recycling.png"))); // NOI18N
        btnKhoiPhuc.setText("Khôi phục");
        btnKhoiPhuc.setPreferredSize(new java.awt.Dimension(150, 50));
        btnKhoiPhuc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnKhoiPhucActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jpnKhoiPhucKHLayout = new javax.swing.GroupLayout(jpnKhoiPhucKH);
        jpnKhoiPhucKH.setLayout(jpnKhoiPhucKHLayout);
        jpnKhoiPhucKHLayout.setHorizontalGroup(
            jpnKhoiPhucKHLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jpnKhoiPhucKHLayout.createSequentialGroup()
                .addContainerGap(1055, Short.MAX_VALUE)
                .addComponent(btnKhoiPhuc, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(32, 32, 32))
            .addGroup(jpnKhoiPhucKHLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jpnKhoiPhucKHLayout.createSequentialGroup()
                    .addGap(24, 24, 24)
                    .addComponent(jpnViewKhoiPhuc, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGap(28, 28, 28)))
        );
        jpnKhoiPhucKHLayout.setVerticalGroup(
            jpnKhoiPhucKHLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jpnKhoiPhucKHLayout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addComponent(btnKhoiPhuc, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(15, 15, 15))
            .addGroup(jpnKhoiPhucKHLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jpnKhoiPhucKHLayout.createSequentialGroup()
                    .addGap(81, 81, 81)
                    .addComponent(jpnViewKhoiPhuc, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGap(14, 14, 14)))
        );

        jtbQuanLyKH.addTab("Khôi phục khách hàng", jpnKhoiPhucKH);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jtbQuanLyKH)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jtbQuanLyKH)
        );
    }// </editor-fold>//GEN-END:initComponents
    ArrayList<KhachHang> listKH;

    void LoadKHVaoTable(JTable jt, JPanel jpn, JScrollPane jsp, int trangthai, String searchStr) {
        String[] header = {"Mã khách hàng", "Tên khách hàng", "SDT", "Địa chỉ"};
        if (jt == null && jpn == null && jsp == null) {
            jt = jtKhachHang;
            jpn = jpnView;
            jsp = jspKhachHang;
        }
        if (searchStr != null) {
            listKH = KhachHangDAO.getInstance().search(searchStr);
        } else {
            listKH = KhachHangDAO.getInstance().getListKhachHang(trangthai);
        }
        DefaultTableModel modelTableDb = new DefaultTableModel(header, 0) {
            @Override
            public boolean isCellEditable(int rowIndex, int colIndex) {
                return false;
            }

        };

        for (KhachHang ncc : listKH) {
            Object[] row = {ncc.getMaKH(), ncc.getTenKH(), ncc.getSDT(), ncc.getDiaChi()};
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
    private void btnXoaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnXoaActionPerformed
        // TODO add your handling code here:
        try {
            int index = jtKhachHang.getSelectedRow();
            KhachHang ncc = listKH.get(index);

            String maKH = ncc.getMaKH();
            String tenKH = ncc.getTenKH();

            int kq = JOptionPane.showConfirmDialog(null, "Bạn có chắc chắn muốn xóa khách hàng có tên là: " + tenKH + "?", "Câu hỏi", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
            if (kq == JOptionPane.YES_OPTION) {
                KhachHangDAO.getInstance().deleteKhachHang(maKH);
            }
            listKH.remove(index);
            LoadKHVaoTable(jtKhachHang, jpnView, jspKhachHang, 1, null);
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Vui lòng chọn khách hàng muốn xóa!", "Cảnh báo", JOptionPane.WARNING_MESSAGE);
        }
    }//GEN-LAST:event_btnXoaActionPerformed

    private void jtKhachHangMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jtKhachHangMouseClicked
        // TODO add your handling code here:
        if (evt.getClickCount() == 2 && jtKhachHang.getSelectedRow() != -1) {
            int index = jtKhachHang.getSelectedRow();

            KhachHang ncc = listKH.get(index);

            KhachHangJFrame frame = new KhachHangJFrame(ncc, this, 0);
            TaoDialog(frame, "Sửa khách hàng");
        }
    }//GEN-LAST:event_jtKhachHangMouseClicked
    private void TaoDialog(KhachHangJFrame frame, String title) {
        frame.setResizable(false);

        dialog = new JDialog();
        dialog.setModal(true);
        dialog.getContentPane().add(frame.getContentPane());
        dialog.getRootPane().setDefaultButton(frame.getBtnLuu());
        dialog.pack();
        dialog.setLocationRelativeTo(null);
        dialog.setTitle(title);
        dialog.setVisible(true);
    }
    private void btnThemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThemActionPerformed
        // TODO add your handling code here:
        KhachHangJFrame frame = new KhachHangJFrame(null, this, 1);
        TaoDialog(frame, "Thêm hàng hóa");
    }//GEN-LAST:event_btnThemActionPerformed

    private void jtbQuanLyKHStateChanged(javax.swing.event.ChangeEvent evt) {//GEN-FIRST:event_jtbQuanLyKHStateChanged
        // TODO add your handling code here:
        int index = jtbQuanLyKH.getSelectedIndex();
        if (index == 0) {
            LoadKHVaoTable(jtKhachHang, jpnView, jspKhachHang, 1, null);
        } else {
            LoadKHVaoTable(jtKhachHangKhoiPhuc, jpnViewKhoiPhuc, jspKhachHangKhoiPhuc, 0, null);
        }
    }//GEN-LAST:event_jtbQuanLyKHStateChanged

    private void btnKhoiPhucActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnKhoiPhucActionPerformed
        // TODO add your handling code here:
        try {
            int index = jtKhachHangKhoiPhuc.getSelectedRow();

            KhachHang ncc = listKH.get(index);

            KhachHangDAO.getInstance().recoveryKhachHang(ncc.getMaKH());

            listKH.remove(index);
            LoadKHVaoTable(jtKhachHangKhoiPhuc, jpnViewKhoiPhuc, jspKhachHangKhoiPhuc, 0, null);
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Vui lòng chọn khách hàng muốn khôi phục!", "Cảnh báo", JOptionPane.WARNING_MESSAGE);
        }
    }//GEN-LAST:event_btnKhoiPhucActionPerformed

    private void jtfSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jtfSearchActionPerformed
        // TODO add your handling code here:
        btnTimKiemActionPerformed(evt);
    }//GEN-LAST:event_jtfSearchActionPerformed

    private void btnTimKiemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnTimKiemActionPerformed
        // TODO add your handling code here:
        LoadKHVaoTable(jtKhachHang, jpnView, jspKhachHang, 1, jtfSearch.getText());
    }//GEN-LAST:event_btnTimKiemActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnKhoiPhuc;
    private javax.swing.JButton btnThem;
    private javax.swing.JButton btnTimKiem;
    private javax.swing.JButton btnXoa;
    private javax.swing.JPanel jpnKhoiPhucKH;
    private javax.swing.JPanel jpnQuanLyKH;
    private javax.swing.JPanel jpnView;
    private javax.swing.JPanel jpnViewKhoiPhuc;
    private javax.swing.JScrollPane jspKhachHang;
    private javax.swing.JScrollPane jspKhachHangKhoiPhuc;
    private javax.swing.JTable jtKhachHang;
    private javax.swing.JTable jtKhachHangKhoiPhuc;
    private javax.swing.JTabbedPane jtbQuanLyKH;
    private javax.swing.JTextField jtfSearch;
    // End of variables declaration//GEN-END:variables
}
