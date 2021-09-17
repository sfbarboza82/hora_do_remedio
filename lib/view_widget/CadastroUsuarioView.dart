import 'package:flutter/material.dart';

class CadastroUsuarioView extends StatefulWidget {
  const CadastroUsuarioView({Key? key}) : super(key: key);

  @override
  _CadastroUsuarioViewState createState() => _CadastroUsuarioViewState();
}

class _CadastroUsuarioViewState extends State<CadastroUsuarioView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Usúario"),
      ),
      body: Container(
          decoration: BoxDecoration(color: Color(0xff075E54)),
          padding: EdgeInsets.all(16),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: Image.asset(
                      "images/logo.png",
                      width: 200,
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: TextField(
                      autofocus: true,
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                          hintText: "Nome",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                          hintText: "Endereço",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: TextField(
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                          hintText: "E-mail",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32))),
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Senha",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 10),
                    child: RaisedButton(
                        child: Text(
                          "Entrar",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        color: Colors.green,
                        padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)),
                        onPressed: () {}),
                  ),
                  Center(
                    child: GestureDetector(
                      child: Text("Não tem conta? Cadastre-se!",
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CadastroUsuarioView()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
