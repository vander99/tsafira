import 'package:client/accueil/hotel_page.dart';
import 'package:client/accueil/restaurant_page.dart';
import 'package:client/espaceVoyage/nouveau_voyage/reserve_hotel.dart';
import 'package:client/espaceVoyage/nouveau_voyage/start_form.dart';
import 'package:client/profile/Mes_Amis/mes_amis.dart';
import 'package:client/profile/Mes_Preferences/mes_preferences.dart';
import 'package:client/profile/Mon_Compte/mes_reglages.dart';
import 'package:client/profile/Nvx_Mdp/nvx_mdp.dart';
import 'package:client/profile/Mon_Compte/mon_compte.dart';

getRoutes() {
  return {
    //MonCompte.route: (context) => MonCompte(),
    MonCompte.route: (context) => MonCompte(),
    //MesAmis.route: (context) => MesAmis(),
    MesAmis.route: (context) => MesAmis(),
    MesPreferences.route: (context) => MesPreferences(),
    NvxMdp.route: (context) => NvxMdp(),
    MesReglages.route: (context) => MesReglages(),
    HotelPage.route: (context) => HotelPage(),
    RestaurantPage.route: (context) => RestaurantPage(),
    HotelPageReserv.route: (context) => HotelPageReserv(),
    FormScreen.route: (context) => FormScreen()
  };
}
