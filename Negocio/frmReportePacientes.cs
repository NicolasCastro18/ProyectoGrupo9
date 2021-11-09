﻿using Microsoft.Reporting.WinForms;
using ProyectoGrupo9.Clases;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProyectoGrupo9.Negocio
{
    public partial class frmReportePacientes : Form
    {
        Paciente oPaciente = new Paciente();
        Ciudad oCiudad = new Ciudad();
        public frmReportePacientes()
        {
            InitializeComponent();
        }

        private void frmReportePacientes_Load(object sender, EventArgs e)
        {
            CargarCombo(cboCiudad, oCiudad.RecuperarTodos());
            //this.reportViewer2.RefreshReport();
        }

        private void reportViewer2_Load(object sender, EventArgs e)
        {
            DataTable tabla = new DataTable();
           
            tabla = oPaciente.RecuperarTodos();
            

            ReportDataSource ds = new ReportDataSource("DatosPacientes", tabla);
           

            reportViewer2.LocalReport.DataSources.Clear();
            reportViewer2.LocalReport.DataSources.Add(ds);
            reportViewer2.LocalReport.Refresh();


        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.reportViewer2.RefreshReport();
        }
        private void CargarCombo(ComboBox combo, DataTable tabla)
        {
            combo.DataSource = tabla;
            combo.DisplayMember = tabla.Columns[1].ColumnName;
            combo.ValueMember = tabla.Columns[0].ColumnName;
            combo.SelectedIndex = -1;
            combo.DropDownStyle = ComboBoxStyle.DropDownList;
        }
        private void CargarCombo(ComboBox combo, DataTable tabla, string campoMostrar, string campoValor)
        {
            combo.DataSource = tabla;
            combo.DisplayMember = campoMostrar;
            combo.ValueMember = campoValor;
            combo.SelectedIndex = -1;
            combo.DropDownStyle = ComboBoxStyle.DropDownList;
        }
    }
}