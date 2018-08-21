.class public Lcom/sina/weibo/sdk/utils/AesEncrypt;
.super Ljava/lang/Object;
.source "AesEncrypt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/AesEncrypt;->deBase64(Ljava/lang/String;)[B

    move-result-object v5

    const-string/jumbo v7, "AES/ECB/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v7, 0x2

    const-string/jumbo v8, "Stark"

    invoke-static {v8}, Lcom/sina/weibo/sdk/utils/AesEncrypt;->generateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v7, "utf-8"

    invoke-direct {v4, v3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v7, "Decrypt"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v6

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v7, "Decrypt"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    goto :goto_0
.end method

.method public static Encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string/jumbo v3, "AES/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v3, 0x1

    const-string/jumbo v4, "Stark"

    invoke-static {v4}, Lcom/sina/weibo/sdk/utils/AesEncrypt;->generateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/sina/weibo/sdk/utils/AesEncrypt;->enBase64([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "Encrypt"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static deBase64(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static enBase64([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/Base64;->encode([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method protected static generateKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/16 v7, 0x12

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v5, "Decrypt"

    const-string/jumbo v6, "Key\u4e3a\u7a7anull"

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x10

    if-eq v5, v6, :cond_1

    const-string/jumbo v5, "Decrypt"

    const-string/jumbo v6, "Key\u957f\u5ea6\u4e0d\u662f16\u4f4d"

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "utf-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "AES"

    invoke-direct {v3, v2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "generateKey"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v1, "u7FFIamNkcuNHMwmAa+VaIrn96etbed19m6VA0iWPoJB8tcFkKkLIgLCScynfkClC9/IRHmXbKa4+ySqhnIjK7P3TgRj0n9KGsLQIVxiT/h2HWmUZj9Bum4EJuSjfSJBVjf/78GWl4zw2EQBOTZyF/9En8JLeLv1YO1tzDwKP3+5S8nnmvV26sjHFAhyRNifFZqUAxMoO1j02c48G/C7vYisBIahWr+vGRmlpxliexdbmR3CKKTSmTmT7jGWVhv5dP5DPcYKEpchtuRnR/rrjI0Nhj3Jcz8gPCegdi+sC+nLij0IjxFf1N5xvyl8CTkbLAF/QjyHq2Y0UU1pOq+oyy88TWp/rym9+vLP5NTT+VObXbduol8UQg0PeRVuTsx4iHHROb4i+Pc5DEVAWsX6Cnn2z7B9gKph0y6JLIddzmUqyeBTzZ3rJEAW/h4JrN9X8nI3HES88cHdQn9YXP7XQrlP6qhy7Z7TKpPda44tWJhR4kZLxflu9pMkCwr2upkDquCgqdgCmeD6vzBd80U0AZphXxFw6GGrFTbkYYbRcmBfrlg5ypEyXoaDujnS15s/6y8Wkmfge/6T6L5t+CHgarkSuNUl0yrZ32R8P9wMDMKs+nzy50pkRugEUFbG8C202SN7DyexqBguwEN4QFqZh2j9vs5kpdfzNYVIxfnuivbriWvNZvRmesdrxnvmaYJH0ssWD5XzJrOeUdzJvqqzjXh8kCw90NuaIMh+5eF2c8MrP81Jh+82kdlmrD0fybdOPap5RRIe/UAIqcOIChbyjO6iDQ6G/ChShzHGwbxxQsQ22tdmOC+tJq4kAqk5Y9uPtyEV7r38nyBsfiyDWMgweIxnCfvDxIe5frXIE+OKziNGeUXuJf6FYc1Kex/ASjdE"

    invoke-static {v1}, Lcom/sina/weibo/sdk/utils/AesEncrypt;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u89e3\u5bc6\u540e\u7684\u5b57\u4e32\u662f\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
