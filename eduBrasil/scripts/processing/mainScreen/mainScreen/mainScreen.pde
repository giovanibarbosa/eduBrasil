import controlP5.*;
import java.io.*;

ControlP5 cp5;

Textfield stateTextInput;
Textfield stateTextSuggestion;

int myColorBackground = color(0,0,0);

DropdownList droplist;

void setup() {
  
  size(800, 600);
  
  cp5 = new ControlP5(this);
  cp5.setFont(createFont("Times New Roman",14));
  
  
//  stateTextInput = cp5.addTextfield("stateTextInput");
//  stateTextInput.setAutoClear(false);
//  stateTextSuggestion = cp5.addListBox(droplist)
//  .setPosition(0,0)
//  .setSize(260, 200)
//  ;
//  stateTextSuggestion.captionLabel().set("");
 
  // add a dropdownlist at position (50,100)
  droplist = cp5.addDropdownList("Escolha sua cidade:").setPosition(50, 100);
 
  //dropdown layout 
  droplist.setSize(260, 200);
  droplist.setScrollbarWidth(10);
  droplist.setItemHeight(20);
  droplist.setBackgroundColor(color(0));
  droplist.setItemHeight(15);
  droplist.setBarHeight(20);
  droplist.setColorActive(color(255,128));
  droplist.setColorBackground(color(200));
  droplist.setColorLabel(color(0));
 
  // add items to the dropdownlist
  droplist.addItem("Água Branca ", 0);
  droplist.addItem("Aguiar", 1);
  droplist.addItem("Alagoa Grande", 2);
  droplist.addItem("Alagoa Nova", 3);
  droplist.addItem("Alagoinha", 4);
  droplist.addItem("Alcantil", 5);
  droplist.addItem("Algodão de Jandaíra", 6);
  droplist.addItem("Alhandra", 7);
  droplist.addItem("Amparo", 8);
  droplist.addItem("Aparecida", 9);
  droplist.addItem("Araçagi", 10);
  droplist.addItem("Arara", 11);
  droplist.addItem("Araruna", 12);
  droplist.addItem("Areia", 13);
  droplist.addItem("Areia de Baraúnas", 14);
  droplist.addItem("Areial", 15);
  droplist.addItem("Aroeiras", 16);
  droplist.addItem("Assunção", 17);
  droplist.addItem("Baía da Traição", 18);
  droplist.addItem("Bananeiras", 19);
  droplist.addItem("Baraúna", 20);
  droplist.addItem("Barra de Santa Rosa", 21);
  droplist.addItem("Barra de Santana", 22);
  droplist.addItem("Barra de São Miguel", 23);
  droplist.addItem("Bayeux", 24);
  droplist.addItem("Belém", 25);
  droplist.addItem("Belém do Brejo do Cruz", 26);
  droplist.addItem("Bernardino Batista", 27);
  droplist.addItem("Boa Ventura", 28);
  droplist.addItem("Boa Vista", 29);
  droplist.addItem("Bom Jesus", 30);
  droplist.addItem("Bom Sucesso", 31);
  droplist.addItem("Bonito de Santa Fé", 32);
  droplist.addItem("Boqueirão", 33);
  droplist.addItem("Borborema", 34);
  droplist.addItem("Brejo do Cruz", 35);
  droplist.addItem("Brejo dos Santos", 36);
  droplist.addItem("Caaporã", 37);
  droplist.addItem("Cabaceiras", 38);
  droplist.addItem("Cabedelo", 39);
  droplist.addItem("Cachoeira dos Índios", 40);
  droplist.addItem("Cacimba de Areia", 41);
  droplist.addItem("Cacimba de Dentro", 42);
  droplist.addItem("Cacimbas", 43);
  droplist.addItem("Caiçara", 44);
  droplist.addItem("Cajazeiras", 45);
  droplist.addItem("Cajazeirinhas", 46);
  droplist.addItem("Caldas Brandão", 47);
  droplist.addItem("Camalaú", 48);
  droplist.addItem("Campina Grande", 49);
  droplist.addItem("Campo de Santana", 50);
  droplist.addItem("Capim", 51);
  droplist.addItem("Caraúbas", 52);
  droplist.addItem("Carrapateira", 53);
  droplist.addItem("Casserengue", 54);
  droplist.addItem("Catingueira", 55);
  droplist.addItem("Catolé do Rocha", 56);
  droplist.addItem("Caturité", 57);
  droplist.addItem("Conceição", 58);
  droplist.addItem("Condado", 59);
  droplist.addItem("Conde", 60);
  droplist.addItem("Congo", 61);
  droplist.addItem("Coremas", 62);
  droplist.addItem("Coxixola", 63);
  droplist.addItem("Cruz do Espírito Santo", 64);
  droplist.addItem("Cubati", 65);
  droplist.addItem("Cuité", 66);
  droplist.addItem("Cuitegi", 67);
  droplist.addItem("Cuité de Mamanguape", 68);
  droplist.addItem("Curral de Cima", 69);
  droplist.addItem("Curral Velho", 70);
  droplist.addItem("Damião", 71);
  droplist.addItem("Desterro", 72);
  droplist.addItem("Diamante", 73);
  droplist.addItem("Dona Inês", 74);
  droplist.addItem("Duas Estradas", 75);
  droplist.addItem("Emas", 76);
  droplist.addItem("Esperança", 77);
  droplist.addItem("Fagundes", 78);
  droplist.addItem("Frei Martinho", 79);
  droplist.addItem("Gado Bravo", 80);
  droplist.addItem("Guarabira", 81);
  droplist.addItem("Gurinhém", 82);
  droplist.addItem("Gurjão", 83);
  droplist.addItem("Ibiara", 84);
  droplist.addItem("Igaracy", 85);
  droplist.addItem("Imaculada", 86);
  droplist.addItem("Ingá", 87);
  droplist.addItem("Itabaiana", 88);
  droplist.addItem("Itaporanga", 89);
  droplist.addItem("Itapororoca", 90);
  droplist.addItem("Itatuba", 91);
  droplist.addItem("Jacaraú", 92);
  droplist.addItem("Jericó", 93);
  droplist.addItem("João Pessoa", 94);
  droplist.addItem("Juarez Távora", 95);
  droplist.addItem("Juazeirinho", 96);
  droplist.addItem("Junco do Seridó", 97);
  droplist.addItem("Juripiranga", 98);
  droplist.addItem("Juru", 99);
  droplist.addItem("Lagoa", 100);
  droplist.addItem("Lagoa de Dentro", 101);
  droplist.addItem("Lagoa Seca", 102);
  droplist.addItem("Lastro", 103);
  droplist.addItem("Livramento", 104);
  droplist.addItem("Logradouro", 105);
  droplist.addItem("Lucena", 106);
  droplist.addItem("Mãe d'Água", 107);
  droplist.addItem("Malta", 108);
  droplist.addItem("Mamanguape", 109);
  droplist.addItem("Manaíra", 110);
  droplist.addItem("Marcação", 111);
  droplist.addItem("Mari", 112);
  droplist.addItem("Marizópolis", 113);
  droplist.addItem("Massaranduba", 114);
  droplist.addItem("Mataraca", 115);
  droplist.addItem("Matinhas", 116);
  droplist.addItem("Mato Grosso", 117);
  droplist.addItem("Maturéia", 118);
  droplist.addItem("Mogeiro", 119);
  droplist.addItem("Montadas", 120);
  droplist.addItem("Monte Horebe", 121);
  droplist.addItem("Monteiro", 122);
  droplist.addItem("Mulungu", 123);
  droplist.addItem("Natuba", 124);
  droplist.addItem("Nazarezinho", 125);
  droplist.addItem("Nova Floresta", 126);
  droplist.addItem("Nova Olinda", 127);
  droplist.addItem("Nova Palmeira", 128);
  droplist.addItem("Olho d'Água", 129);
  droplist.addItem("Olivedos", 130);
  droplist.addItem("Ouro Velho", 131);
  droplist.addItem("Parari", 132);
  droplist.addItem("Passagem", 133);
  droplist.addItem("Patos", 134);
  droplist.addItem("Paulista", 135);
  droplist.addItem("Pedra Branca", 136);
  droplist.addItem("Pedra Lavrada", 137);
  droplist.addItem("Pedras de Fogo", 138);
  droplist.addItem("Pedro Régis", 139);
  droplist.addItem("Piancó", 140);
  droplist.addItem("Picuí", 141);
  droplist.addItem("Pilar", 142);
  droplist.addItem("Pilões", 143);
  droplist.addItem("Pilõezinhos", 144);
  droplist.addItem("Pirpirituba", 145);
  droplist.addItem("Pitimbu", 146);
  droplist.addItem("Pocinhos", 147);
  droplist.addItem("Poço Dantas", 148);
  droplist.addItem("Poço de José de Moura", 149);
  droplist.addItem("Pombal", 150);
  droplist.addItem("Prata", 151);
  droplist.addItem("Princesa Isabel", 152);
  droplist.addItem("Puxinanã", 153);
  droplist.addItem("Queimadas", 154);
  droplist.addItem("Quixaba", 155);
  droplist.addItem("Remígio", 156);
  droplist.addItem("Riachão", 157);
  droplist.addItem("Riachão do Bacamarte", 158);
  droplist.addItem("Riachão do Poço", 159);
  droplist.addItem("Riacho de Santo Antônio", 160);
  droplist.addItem("Riacho dos Cavalos", 161);
  droplist.addItem("Rio Tinto", 162);
  droplist.addItem("Salgadinho", 163);
  droplist.addItem("Salgado de São Félix", 164);  
  droplist.addItem("Santa Cecília", 165);
  droplist.addItem("Santa Cruz", 166);
  droplist.addItem("Santa Helena", 167);
  droplist.addItem("Santa Inês", 168);
  droplist.addItem("Santa Luzia", 169);
  droplist.addItem("Santa Rita", 170);
  droplist.addItem("Santa Teresinha", 171);
  droplist.addItem("Santana de Mangueira", 172);
  droplist.addItem("Santana dos Garrotes", 173);
  droplist.addItem("Santarém", 174); 
  droplist.addItem("Santo André", 175);
  droplist.addItem("São Bentinho", 176);
  droplist.addItem("São Bento", 177);
  droplist.addItem("São Domingos", 178);
  droplist.addItem("São Domingos do Cariri", 179);
  droplist.addItem("São Francisco", 180);
  droplist.addItem("São João do Cariri", 181);
  droplist.addItem("São João do Rio do Peixe", 182);
  droplist.addItem("São João do Tigre", 183);  
  droplist.addItem("São José da Lagoa Tapada", 184);
  droplist.addItem("São José de Caiana", 185);
  droplist.addItem("São José de Espinharas", 186);
  droplist.addItem("São José dos Ramos", 187);
  droplist.addItem("São José de Piranhas", 188);
  droplist.addItem("São José de Princesa", 189);
  droplist.addItem("São José do Bonfim", 190);
  droplist.addItem("São José do Brejo do Cruz", 191);
  droplist.addItem("São José do Sabugi", 192);
  droplist.addItem("São José dos Cordeiros", 193);
  droplist.addItem("São Mamede", 194);
  droplist.addItem("São Miguel de Taipu", 195);
  droplist.addItem("São Sebastião de Lagoa de Roça", 196);
  droplist.addItem("São Sebastião do Umbuzeiro", 197);
  droplist.addItem("Sapé", 198);
  droplist.addItem("Seridó", 199);
  droplist.addItem("Serra Branca", 200);
  droplist.addItem("Serra Grande", 201);
  droplist.addItem("Serra da Raiz", 202);
  droplist.addItem("Serra Redonda", 203);
  droplist.addItem("Serraria", 204);
  droplist.addItem("Sertãozinho", 205);
  droplist.addItem("Sobrado", 206);
  droplist.addItem("Solânea", 207);
  droplist.addItem("Soledade", 208);
  droplist.addItem("Sossêgo", 209);
  droplist.addItem("Sousa", 210);
  droplist.addItem("Sumé", 211);
  droplist.addItem("Tacima", 212);
  droplist.addItem("Taperoá", 213);
  droplist.addItem("Tavares", 214);
  droplist.addItem("Teixeira", 215);
  droplist.addItem("Tenório", 216);
  droplist.addItem("Triunfo", 217);
  droplist.addItem("Uiraúna", 218);
  droplist.addItem("Umbuzeiro", 219);
  droplist.addItem("Várzea", 220);
  droplist.addItem("Vieirópolis", 221);
  droplist.addItem("Vista Serrana", 222); 
  droplist.addItem("Zabelê", 223);
  
  
  
}
 
void draw() {
  background(128);

  // controlp5 autodraw is on by default (if you use the default JAVA2D renderer)
  // this means the gui is automatically drawn at the end
}

//method to search for autocomplete research
void keyPressed(){
      stateTextInput.submit();
}
 


void selectedCity(String cidade){
  println(cidade);
try{  
    String path = "\"C:\\Program Files\\R\\R-2.15.0\\bin\\Rscript.exe\" " + "C:\\Users\\Rodolfo\\Documents\\GitHub\\eduBrasil\\eduBrasil\\scripts\\processing\\mainScreen\\mainScreen\\cria_imagens.R" + " " + cidade;
    
    
    println(path);
   println(new File(".").getAbsolutePath());
    Runtime r = Runtime.getRuntime();
    Process pr=r.exec(path);
    pr.waitFor();
    println(pr.exitValue());
//  }catch(IOException e){
  }catch(Exception e){
    System.out.println("IOException");
  }
}
 
// controlEvent monitors clicks on the gui
void controlEvent(ControlEvent theEvent) {
  if (theEvent.isGroup()) {
    println("Peguei");
    println(theEvent.getGroup() + " => " + theEvent.getGroup().getValue());
    int index = (int)theEvent.getGroup().getValue();
    println(index);
    println(droplist.getItem(index));
    ListBoxItem cidade = droplist.getItem(index);
    println("Pequei" + " => " + cidade.getName());
    selectedCity(cidade.getName());
   
  }
}
