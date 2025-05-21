package com.registro.entidad;

import java.sql.Timestamp;

public class RegistroDeEntradaYSalida {
    private int idRegistro;
    private Timestamp horaIngreso;
    private Timestamp horaSalida;
    private String dni;
    private String placa; // Cambiado de int a String
    private int numEstacionamiento;

    public RegistroDeEntradaYSalida() {
        // Constructor sin argumentos
    }
    public RegistroDeEntradaYSalida(int idRegistro, Timestamp horaIngreso, Timestamp horaSalida, String dni, String placa, int numEstacionamiento) {
        this.idRegistro = idRegistro;
        this.horaIngreso = horaIngreso;
        this.horaSalida = horaSalida;
        this.dni = dni;
        this.placa = placa;
        this.numEstacionamiento = numEstacionamiento;
    }

    public int getIdRegistro() {
        return idRegistro;
    }

    public void setIdRegistro(int idRegistro) {
        this.idRegistro = idRegistro;
    }

    public Timestamp getHoraIngreso() {
        return horaIngreso;
    }

    public void setHoraIngreso(Timestamp horaIngreso) {
        this.horaIngreso = horaIngreso;
    }

    public Timestamp getHoraSalida() {
        return horaSalida;
    }

    public void setHoraSalida(Timestamp horaSalida) {
        this.horaSalida = horaSalida;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public int getNumEstacionamiento() {
        return numEstacionamiento;
    }

    public void setNumEstacionamiento(int numEstacionamiento) {
        this.numEstacionamiento = numEstacionamiento;
    }
}
