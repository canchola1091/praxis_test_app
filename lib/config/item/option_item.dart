

import 'package:flutter/material.dart';

class TitleOption {
  static const String camara = 'Cámara';
  static const String listEmpleados = 'Lista de empleados';
  static const String nombreCompleto = 'Nombre completo';
  static const String numeroTelefonico = 'Número teléfonico';
  static const String fechaNacimiento = 'Fecha de nacimiento';
  static const String sexo = 'Sexo';
  static const String colorFavorito = 'Color favorito';
}

class OptionItem {

  final String title;
  final String subTitle;
  final IconData icon;
  bool isSelected;

  OptionItem({
    required this.title, 
    required this.subTitle, 
    required this.icon,
    this.isSelected = false
  });

}

List<OptionItem> appMenuItems = [

  OptionItem(
    title: 'Cámara',
    subTitle: 'Captura una fotografía',
    icon: Icons.camera_alt_outlined
  ),

  OptionItem(
    title: 'Lista de empleados',
    subTitle: 'Consulta la lista de empleados',
    icon: Icons.person_2_outlined
  ),

  OptionItem(
    title: 'Nombre completo',
    subTitle: 'Ingresa un nombre completo',
    icon: Icons.edit_outlined
  ),

  OptionItem(
    title: 'Número teléfonico',
    subTitle: 'Ingresa un número teléfonico',
    icon: Icons.phone_enabled_outlined
  ),

  OptionItem(
    title: 'Fecha de nacimiento',
    subTitle: 'Ingresa una fecha de nacimiento',
    icon: Icons.date_range_outlined
  ),

  OptionItem(
    title: 'Sexo',
    subTitle: 'Ingresa un genero (Masculino/Femenino)',
    icon: Icons.generating_tokens_outlined
  ),

  OptionItem(
    title: 'Color favorito',
    subTitle: 'Selecciona un color',
    icon: Icons.color_lens_outlined
  ),

];