from rasa_sdk import Action
from rasa_sdk.interfaces import Tracker
from rasa_sdk.executor import CollectingDispatcher
from typing import Any, Text, Dict, List

class ActionExplainAllFeatures(Action):

    def name(self) -> Text:
        return "action_explain_all_features"

    def run(self, dispatcher: CollectingDispatcher, tracker: Tracker, domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:
        feature_descriptions = {
            "Profil": "Fitur Profil memungkinkan petani untuk mengedit data akun mereka seperti nama, nomor telepon, dan kelompok tani.",
            "Informasi Cuaca": "Fitur Informasi Cuaca menyediakan ramalan cuaca harian untuk membantu petani merencanakan aktivitas.",
            "Manajemen Hama": "Fitur Manajemen Hama menampilkan data FTD (Fruit Fly Trapped per Day) untuk kebun.",
            "Peta Persebaran Hama": "Peta Persebaran Hama menunjukkan lokasi kebun dan status hama dalam bentuk peta interaktif.",
            "Foto Hitung Hama": "Foto Hitung Hama memungkinkan petani untuk mengambil foto hama dan menghitung jumlahnya.",
            "Artikel": "Fitur Artikel menyediakan tips dan trik terkait pengelolaan kebun dan cara mengatasi hama."
        }

        response = "Berikut adalah penjelasan semua fitur di MySalak:\n\n"
        for feature, description in feature_descriptions.items():
            response += f"- {feature}: {description}\n\n"

        dispatcher.utter_message(text=response.strip())
        return []
