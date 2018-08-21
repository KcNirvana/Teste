.class public Lcom/autonavi/its/protocol/log/util/RSATool;
.super Ljava/lang/Object;
.source "RSATool.java"


# static fields
.field private static final ENCODE:Ljava/lang/String; = "UTF-8"

.field private static final KEY_LENGTH:I = 0x800

.field public static final MAX_DECRYPT_BLOCK:I = 0x80

.field public static final MAX_ENCRYPT_BLOCK:I = 0x75

.field public static final PRIVATE_KEY:Ljava/lang/String; = "MIIEowIBAAKCAQEAyMQboQN8Q9ExCTMkMQvZnyf5hzL1y7atDiFf7joCPucnpeVeQkeKGgJEsnNuygPOrmNhntstO4NZp0ylZnnOEA/eKaqmOdro6V4k7XEWfpSebcDhGHBgC1vJloSXo6SOuTjcgYoINaZ7pOJExM8U+a/jx0xIoemmIxRLVzFEivjkLlRdQsB+4YSvrejETH7hFeu4ZDRxKRF/0SiT6Qj96kcc7iVPRsmFTzBSTibop8uTtPWGITz8JYCwYjIHlOJ7gGkYzRJf7ZL3rFYKYHSI9slP3QtkD3DLr2spKtH/ffXqU/nIgjxmfL4oI21CWRiMugf8PqFfyNp8YxVNMoRMxQIDAQABAoIBACs1keC4mFEcP9qECEEKFN9dQiYoAKDEg0BsTHJAR+Vz6KOa1wuazA1G+bQShgCyixQbTZJcB8MsROpt45dHleL9F0qOcNI43DIF0hrMYRQDNonWnludK/6l1aAwj1Zn/1O7+jFjHNs3JptZG4XkL9aBVZu6PlOiruAT6RcuAluKTb//ZpHhRYnTirFtOsYh+EBHFNVr+r1fJ0cdwPiAoS4aDM0nwh4C5p/iJEYbctn74uUJAXny7rMLy4/RBkMIW6cc/wOjTOQEaWRSebYUgfCJ0aGfgc1BHR2kXOi+JxHtJ+8tqO6ZppmGAeX98Z4b8o7PvSMMj6VV7HsQA3uhXS0CgYEA+Z6UB0T/04b70KLfa5m3hO0kGyGvMQjA0PXE3pN6ne3F8bU3cfC04jg2D+svc9nFOG/1ZvxCx0iiZf6MRBv/YlAHaiD8fjwcggPlRJLguw9UScW/xmFEYF9ZSxxWHzNo3raYc82zB9KUqwbT+gAH6C23MQURPOJUCkFpNGWuBBsCgYEAzeXZqZVJVAQa1skeXC0vKy/stcVT+K7dL3XJmTvmXrPdn+cCiDNg1e5BDtr6DWq3C4WKz8JKZdSsg2wc3BmlGueXBYr07jXuXdUXRsOSrb4CAbohiZfVOMnq30Cl80Y1h9MS9XzceR+myS06BcGPYy16hUxfGgb3YDx9BmvLQJ8CgYAPQxHb6+0UWtF0rTCp3Ikq+HDXs9SJU/auEAjMbwn1M/+BSsosDkKQ/kzX5lJNbAgx7i578HqIwrkjMVAULf4MXcZGR+QIN9aqYGCZM73H0iUeKZgTIglTNyE3hXECkVsdGt7xXadPmCF833sAcxYIrRrhRWULau8mfV9YU8sy9wKBgCYQnFDxvIC/0YZr4CUCZXoCfiyMsp2DFnkzuXWO0WQotIxfVOSBOyHRzk1Exn28gOKsaaFHNiHlU49oaV13kEKNFip8KhPv/IV0Y709YtykCBLxqkmZvF2nVri3Zva2wCbAKv0ffFMYOuluZw+xXSTkv4XtPJe/OfScujB5tTXZAoGBAPdHu/ore/JQslf/tIw57Z7GUQiKOG0HPD+9jCB81d53AFfRzJfuG1gxK9tHxX05WPKNhmU5nc7+oWq0qsX6WJQKh7jyYC/IL6M2F3m/d/e+DYPQvx5vDvNpETl6P101v6RlQgA35U5DL3vdbiKoX7iGMfYWvRBLpdT2aBgdlune"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyMQboQN8Q9ExCTMkMQvZnyf5hzL1y7atDiFf7joCPucnpeVeQkeKGgJEsnNuygPOrmNhntstO4NZp0ylZnnOEA/eKaqmOdro6V4k7XEWfpSebcDhGHBgC1vJloSXo6SOuTjcgYoINaZ7pOJExM8U+a/jx0xIoemmIxRLVzFEivjkLlRdQsB+4YSvrejETH7hFeu4ZDRxKRF/0SiT6Qj96kcc7iVPRsmFTzBSTibop8uTtPWGITz8JYCwYjIHlOJ7gGkYzRJf7ZL3rFYKYHSI9slP3QtkD3DLr2spKtH/ffXqU/nIgjxmfL4oI21CWRiMugf8PqFfyNp8YxVNMoRMxQIDAQAB"

.field private static final SECTION_SIZE:I = 0x28

.field public static final SERVER_PRIVATE_KEY:Ljava/lang/String; = "MIIEogIBAAKCAQEAzBeq6kHtn3X9DBwtDClFqsuZAOqJJWnhqCaKFCDJ99cuHK4f\nRNF/SbQids/Guw62klM7WocCW/Yi9nf+o6lUjpWqO4hzDLQB69qdIZk8zjt8o+BC\nRqmwrCxVTkANaZNjopW+d4FdyDdvseT8R+UMxX6KYlTHWmbmDOPkacScjctSPBGD\nCvrAgqOcZt8BemZXAaTP1E1ct3XunjN58jPlkpe0u4f1n0KfJs6D+hSvX5L1aCEn\n1bV/HQ8s3fE4NvW/NOSQBpiSRHQYMPwK7Q6FpC6RgWweYNnvnlLY+Mdgk5gZvi9G\nUkRl0+KkgIjDH75ZI3IKRMHkETgInuPJrrV1SwIDAQABAoIBAFtgJVeomNkSHG91\nlf2h5N0pNqGgYDLuCugcCSol3Acowi55Duri2RiIm/2R3SoW1ksBFMvdMoM12kV7\nR/jCcWc9PvBUkR4Y4dtVD5DhaMX1AELmvwWgJ8eOOctFBjxEjxFV9ebPdsuTdmCx\nYvpVZLhvhUmtJ2wkMc+HoNZx/p3EotYjH4wIJVnKpcUaAXk5hjejZZ5qGdwGd9DG\nNph20TS+gw/wx9teyxu+w4ixvJWqzq7kL6SvvprOD6/LaQaTg2B8F8PZW11pLJpK\nPocFSn24Mjfttou8y5zgnG8BkEc0oLvP004Js56aiUsyAPMhy+OyAzs0SU0M8fE2\nVMuqTZECgYEA+gbyCCEcrXiUJxYHffK33rOb/Ge6iwhTHPxAo3m1O4XctWQqTGs3\nak0J10mU9pN3ZxRebqoWTxfwVEy6N5Cc05gW45uQKhQ1s9ubgGPvVM4GGIFPkJt4\nLBIXFPxwWWP6cc73HzJeN+wXI3j9JhZL5BKqXFHHCsw214u8LI4wy0UCgYEA0PfO\nYMyXD4zKjfBmqd9+33SZ2q9I9BNluKJd+4b7n0mLRmif6wVlWIerhNKDno8BU5Pl\noofqv+ci+iiYn+2NuP3p9PAyYS8+kPlFl5gcyXmZvLhuFzUL2UZvFxm5iT8+GonH\n+nkKDumkqZ59HJl3xTuDsEbYie7WYTLpBdLJ/08CgYB9vYZ1Hins98oSShrkdW+R\nGWTmMEh5aWtbFWVwkWHamHyh4MkA+5634ByF3+SBiTIwbeb74qArkM91pcy06w5j\nv4YrW23KK7XCSTxP+nI/hQk9w7J++CEckNB45meeHRCzsbFISC1oFFyio1M0l1v9\nTIHOwfXG8WLXTdgJ1EynvQKBgACbF1AUh8OVxuiOb93CNh3zupZ1t6Jtg/f7EIaw\nJ36YufykRQJra5XMHuUtrxAAniJd5WaJOlcAFovfHkIocCa/JbR+FcdOWcIV1uvP\nlxXGcnmnlzod/0DMAXpxqqYJNubgy2GghDTy3HVZbkds8nnx6DnUmsAbnyd8/Ev2\nBnvlAoGATlIklgOPs7CFQzYnXAKUdWFx3maRoEbTxWv1vsZ6E07orj6NlUXw2cpH\nAyhcr3H2gllG9fMZyWDlhq5Ag/LTSicieHGQybwXhNtTKjaGOeOIPxu+nJgmX5GK\nOtffFVaotJ9ylG5GFU2vZ3IkknockVo5e59uSMIB6phK2NqcLu8="

.field private static final SPLIT_SIGN:Ljava/lang/String; = "&"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteToString([B)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo v2, ""

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, ""

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static decryptData(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/autonavi/its/protocol/log/util/RSATool;->decryptData(Ljava/security/Key;[B)[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, ""

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, ""

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static decryptData(Ljava/security/Key;[B)[B
    .locals 8

    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v2, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string/jumbo v4, "SHA-256"

    const-string/jumbo v5, "MGF1"

    sget-object v6, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v7, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-virtual {v0, v2, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_1

    :catch_5
    move-exception v2

    goto :goto_1

    :catch_6
    move-exception v2

    goto :goto_1
.end method

.method public static decryptLargeData(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, ""

    :goto_0
    return-object v4

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "&"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v4, v3, v0

    invoke-static {p0, v4}, Lcom/autonavi/its/protocol/log/util/RSATool;->decryptData(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static encryptData(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/autonavi/its/protocol/log/util/RSATool;->encryptData(Ljava/security/Key;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/its/protocol/log/util/RSATool;->byteToString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const-string/jumbo v0, ""

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static encryptData(Ljava/security/Key;[B)[B
    .locals 8

    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v2, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string/jumbo v4, "SHA-256"

    const-string/jumbo v5, "MGF1"

    sget-object v6, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v7, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-virtual {v0, v2, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_1

    :catch_5
    move-exception v2

    goto :goto_1

    :catch_6
    move-exception v2

    goto :goto_1
.end method

.method public static encryptLargeData(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v6, v1, 0x28

    if-nez v6, :cond_0

    div-int/lit8 v2, v1, 0x28

    :goto_0
    const-string/jumbo v5, ""

    const/4 v0, 0x1

    :goto_1
    if-gt v0, v2, :cond_2

    if-ge v0, v2, :cond_1

    add-int/lit8 v6, v0, -0x1

    mul-int/lit8 v6, v6, 0x28

    mul-int/lit8 v7, v0, 0x28

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    div-int/lit8 v6, v1, 0x28

    add-int/lit8 v2, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v0, -0x1

    mul-int/lit8 v6, v6, 0x28

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_4

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/autonavi/its/protocol/log/util/RSATool;->encryptData(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v2, -0x1

    if-eq v0, v6, :cond_3

    const-string/jumbo v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getPrivateKeyFromString(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 5

    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    :try_start_0
    const-string/jumbo v3, "RSA"

    const-string/jumbo v4, "BC"

    invoke-static {v3, v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method public static getPublicKeyFromString(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    :try_start_0
    const-string/jumbo v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public static makekeyfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    const/16 v5, 0x800

    invoke-virtual {v1, v5}, Ljava/security/KeyPairGenerator;->initialize(I)V

    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPrivateKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Ljava/security/interfaces/RSAPublicKey;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/security/interfaces/RSAPrivateKey;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/protocol/log/util/RSATool;->byteToString([B)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/protocol/log/util/RSATool;->byteToString([B)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
