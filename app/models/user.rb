# email:string
# password_digest:string

# şifre ve şifre onayı kısımları veritabanına kaydedilmeyecek olan sanal özelliklerdir. 
# Ancak bir şifre gönderdiğimizde, bcrypt üzerinden çalışır ve bu şifreyi veritabanına kaydedebilmesi için hash eder.
# password:string virtual
# password_confirmation:string virtual


class User < ApplicationRecord

    has_secure_password #Rails'in güvenli parola yöntemi

    #veritabanına kaydetmeden önce veritabanında veya kayıtta bir e-posta adresi olup olmadığını kontrol eder.
    validates :email, presence: true , format: {with: /\A[^@\s]+@[^@\s]+\z/ , message:"must be a valid email address"}

end