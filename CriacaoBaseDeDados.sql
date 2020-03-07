create database atena;
use atena;

create table Autoescolas(
    CodAutoescola int primary key auto_increment,
    NomeAutoescola varchar(42));
    
create table Sensores (
    CodSensor int primary key auto_increment,
    CodAutoescola int,
    Dianteiro10 varchar(10),
    Dianteiro20 varchar(10),
    DianteiroD10 varchar(10),
    DianteiroD20 varchar(10),
    DianteiroE10 varchar(10),
    DianteiroE20 varchar(10),
    Traseiro10 varchar(10),
    Traseiro20 varchar(10),
    TraseiroD10 varchar(10),
    TraseiroD20 varchar(10),
    TraseiroE10 varchar(10),
    TraseiroE20 varchar(10),
    foreign key (CodAutoescola) references Autoescolas(CodAutoescola));

create table Carros(
	CodCarro int primary key auto_increment,
    Modelo varchar (42),
    Placa char (7),
    CodSensor int,
    CodAutoescola int,
    foreign key (CodAutoescola) references Autoescolas(CodAutoescolas),
    foreign key (CodSensor) references Sensores(CodSensor) );

create table Professores (
	CodProfessor int primary key auto_increment,
    NomeProfessor varchar(42),
    CodAutoescola  int,
    foreign key (CodAutoescola) references Autoescolas(CodAutoescola));
    
create table Dificuldades (
    CodDificuldade int primary key auto_increment,
    NomeDificuldade varchar(70));
    
create table Aulas (
    CodAula int primary key,
    CodAutoescola int,
    CodAluno int,
    CodCarro int,
    CodProfessor int,
    DataAula date,
    foreign key (CodAutoescola) references Autoescolas(CodAutoescola),
    foreign key (CodAluno) references Alunos(CodAluno),
    foreign key (CodCarro) references Carros(CodCarro),
    foreign key (CodProfessor) references Professores(CodProfessor) );
    
create table AlunosDificuldades (
    CodAluno int,
    CodAula int,
    CodDificuldade int,
    foreign key (CodAluno) references Alunos(CodAluno),
    foreign key (CodAula) references Aulas(CodAula),
    foreign key (CodDificuldade) references Dificuldades(CodDificuldade)
    );
    
    desc dificuldades;
    