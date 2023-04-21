import 'package:atm/views/cliente.dart';
import 'package:atm/views/contato.dart';
import 'package:atm/views/empresa.dart';
import 'package:atm/views/servico.dart';
import 'package:flutter/material.dart';

class HomeAtm extends StatefulWidget {
  const HomeAtm({ Key? key }) : super(key: key);

  @override
  _HomeAtmState createState() => _HomeAtmState();
}

class _HomeAtmState extends State<HomeAtm> {

  void _abrirEmpresa(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Empresa()));
  }
  void _abrirServico(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Servico()));
  }
  void _abrirCliente(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Cliente()));
  }
  void _abrirContato(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Contato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 39, 163, 157),
        title: const Text("Atm Consultoria"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("images/logo.png"),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _abrirEmpresa,
                  child: Image.asset("images/menu_empresa.png"),
                ),
                const SizedBox(
                width: 32,
                ),
                GestureDetector(
                  onTap: _abrirServico,
                  child: Image.asset("images/menu_servico.png"),
                ),
              ]
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _abrirCliente,
                  child: Image.asset("images/menu_cliente.png"),
                ),
                const SizedBox(
                width: 32,
                ),
                GestureDetector(
                  onTap: _abrirContato,
                  child: Image.asset("images/menu_contato.png"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}