using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Contants
{
    public static class Messages
    {
        //General
        public static string ValueEmpty = "Değerler boş gönderilemez!";

        //User
        public static string UserNotFound = "Kullanıcı bulunamadı!";
        public static string UserUpdateError = "Kullanıcı bilgisi düzenlenemedi!";
        public static string UserUpdateSuccess = "Kullanıcı bilgisi düzenlendi";
        public static string UserPasswordUpdateError = "Kullanıcı şifresi değiştirilemedi!";
        public static string UserPasswordUpdateSuccess = "Kullanıcı şifresi değiştirildi";

        //User driver licence
        public static string UserDriverLicenseError = "Kullanıcı ehliyetleri listelenemedi!";

        //User military
        public static string MilitaryError = "Askerlik duruları listelenemedi!";
        public static string UserMilitaryError = "Kullanıcı askerlik duruları listelenemedi!";

        //Cv
        public static string CvAddError = "Özgeçmiş Oluşturulamadı!";

        //User Cv
        public static string UserCvError = "Özgeçmiş bulunamadı!";

        //Cover letter
        public static string CoverLetterAddError = "Önyazı Oluşturulamadı!";

    }
}
