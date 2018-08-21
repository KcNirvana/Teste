.class public Lcom/autonavi/its/protocol/log/req/ReqDownLoadConfig;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqDownLoadConfig.java"

# interfaces
.implements Lcom/autonavi/its/protocol/log/chaos/ITaskReq;


# static fields
.field public static final TYPE:Ljava/lang/String; = "ReqDownLoadConfig"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public dealBusinessData(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/log/req/ReqDownLoadConfig;->setIsBusinessSuccess(Z)V

    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "MIIEogIBAAKCAQEAzBeq6kHtn3X9DBwtDClFqsuZAOqJJWnhqCaKFCDJ99cuHK4f\nRNF/SbQids/Guw62klM7WocCW/Yi9nf+o6lUjpWqO4hzDLQB69qdIZk8zjt8o+BC\nRqmwrCxVTkANaZNjopW+d4FdyDdvseT8R+UMxX6KYlTHWmbmDOPkacScjctSPBGD\nCvrAgqOcZt8BemZXAaTP1E1ct3XunjN58jPlkpe0u4f1n0KfJs6D+hSvX5L1aCEn\n1bV/HQ8s3fE4NvW/NOSQBpiSRHQYMPwK7Q6FpC6RgWweYNnvnlLY+Mdgk5gZvi9G\nUkRl0+KkgIjDH75ZI3IKRMHkETgInuPJrrV1SwIDAQABAoIBAFtgJVeomNkSHG91\nlf2h5N0pNqGgYDLuCugcCSol3Acowi55Duri2RiIm/2R3SoW1ksBFMvdMoM12kV7\nR/jCcWc9PvBUkR4Y4dtVD5DhaMX1AELmvwWgJ8eOOctFBjxEjxFV9ebPdsuTdmCx\nYvpVZLhvhUmtJ2wkMc+HoNZx/p3EotYjH4wIJVnKpcUaAXk5hjejZZ5qGdwGd9DG\nNph20TS+gw/wx9teyxu+w4ixvJWqzq7kL6SvvprOD6/LaQaTg2B8F8PZW11pLJpK\nPocFSn24Mjfttou8y5zgnG8BkEc0oLvP004Js56aiUsyAPMhy+OyAzs0SU0M8fE2\nVMuqTZECgYEA+gbyCCEcrXiUJxYHffK33rOb/Ge6iwhTHPxAo3m1O4XctWQqTGs3\nak0J10mU9pN3ZxRebqoWTxfwVEy6N5Cc05gW45uQKhQ1s9ubgGPvVM4GGIFPkJt4\nLBIXFPxwWWP6cc73HzJeN+wXI3j9JhZL5BKqXFHHCsw214u8LI4wy0UCgYEA0PfO\nYMyXD4zKjfBmqd9+33SZ2q9I9BNluKJd+4b7n0mLRmif6wVlWIerhNKDno8BU5Pl\noofqv+ci+iiYn+2NuP3p9PAyYS8+kPlFl5gcyXmZvLhuFzUL2UZvFxm5iT8+GonH\n+nkKDumkqZ59HJl3xTuDsEbYie7WYTLpBdLJ/08CgYB9vYZ1Hins98oSShrkdW+R\nGWTmMEh5aWtbFWVwkWHamHyh4MkA+5634ByF3+SBiTIwbeb74qArkM91pcy06w5j\nv4YrW23KK7XCSTxP+nI/hQk9w7J++CEckNB45meeHRCzsbFISC1oFFyio1M0l1v9\nTIHOwfXG8WLXTdgJ1EynvQKBgACbF1AUh8OVxuiOb93CNh3zupZ1t6Jtg/f7EIaw\nJ36YufykRQJra5XMHuUtrxAAniJd5WaJOlcAFovfHkIocCa/JbR+FcdOWcIV1uvP\nlxXGcnmnlzod/0DMAXpxqqYJNubgy2GghDTy3HVZbkds8nnx6DnUmsAbnyd8/Ev2\nBnvlAoGATlIklgOPs7CFQzYnXAKUdWFx3maRoEbTxWv1vsZ6E07orj6NlUXw2cpH\nAyhcr3H2gllG9fMZyWDlhq5Ag/LTSicieHGQybwXhNtTKjaGOeOIPxu+nJgmX5GK\nOtffFVaotJ9ylG5GFU2vZ3IkknockVo5e59uSMIB6phK2NqcLu8="

    invoke-static {v1}, Lcom/autonavi/its/protocol/log/util/RSATool;->getPrivateKeyFromString(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/autonavi/its/protocol/log/util/RSATool;->decryptLargeData(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;->getInstance()Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;

    move-result-object v0

    const-string/jumbo v1, "MIIEogIBAAKCAQEAzBeq6kHtn3X9DBwtDClFqsuZAOqJJWnhqCaKFCDJ99cuHK4f\nRNF/SbQids/Guw62klM7WocCW/Yi9nf+o6lUjpWqO4hzDLQB69qdIZk8zjt8o+BC\nRqmwrCxVTkANaZNjopW+d4FdyDdvseT8R+UMxX6KYlTHWmbmDOPkacScjctSPBGD\nCvrAgqOcZt8BemZXAaTP1E1ct3XunjN58jPlkpe0u4f1n0KfJs6D+hSvX5L1aCEn\n1bV/HQ8s3fE4NvW/NOSQBpiSRHQYMPwK7Q6FpC6RgWweYNnvnlLY+Mdgk5gZvi9G\nUkRl0+KkgIjDH75ZI3IKRMHkETgInuPJrrV1SwIDAQABAoIBAFtgJVeomNkSHG91\nlf2h5N0pNqGgYDLuCugcCSol3Acowi55Duri2RiIm/2R3SoW1ksBFMvdMoM12kV7\nR/jCcWc9PvBUkR4Y4dtVD5DhaMX1AELmvwWgJ8eOOctFBjxEjxFV9ebPdsuTdmCx\nYvpVZLhvhUmtJ2wkMc+HoNZx/p3EotYjH4wIJVnKpcUaAXk5hjejZZ5qGdwGd9DG\nNph20TS+gw/wx9teyxu+w4ixvJWqzq7kL6SvvprOD6/LaQaTg2B8F8PZW11pLJpK\nPocFSn24Mjfttou8y5zgnG8BkEc0oLvP004Js56aiUsyAPMhy+OyAzs0SU0M8fE2\nVMuqTZECgYEA+gbyCCEcrXiUJxYHffK33rOb/Ge6iwhTHPxAo3m1O4XctWQqTGs3\nak0J10mU9pN3ZxRebqoWTxfwVEy6N5Cc05gW45uQKhQ1s9ubgGPvVM4GGIFPkJt4\nLBIXFPxwWWP6cc73HzJeN+wXI3j9JhZL5BKqXFHHCsw214u8LI4wy0UCgYEA0PfO\nYMyXD4zKjfBmqd9+33SZ2q9I9BNluKJd+4b7n0mLRmif6wVlWIerhNKDno8BU5Pl\noofqv+ci+iiYn+2NuP3p9PAyYS8+kPlFl5gcyXmZvLhuFzUL2UZvFxm5iT8+GonH\n+nkKDumkqZ59HJl3xTuDsEbYie7WYTLpBdLJ/08CgYB9vYZ1Hins98oSShrkdW+R\nGWTmMEh5aWtbFWVwkWHamHyh4MkA+5634ByF3+SBiTIwbeb74qArkM91pcy06w5j\nv4YrW23KK7XCSTxP+nI/hQk9w7J++CEckNB45meeHRCzsbFISC1oFFyio1M0l1v9\nTIHOwfXG8WLXTdgJ1EynvQKBgACbF1AUh8OVxuiOb93CNh3zupZ1t6Jtg/f7EIaw\nJ36YufykRQJra5XMHuUtrxAAniJd5WaJOlcAFovfHkIocCa/JbR+FcdOWcIV1uvP\nlxXGcnmnlzod/0DMAXpxqqYJNubgy2GghDTy3HVZbkds8nnx6DnUmsAbnyd8/Ev2\nBnvlAoGATlIklgOPs7CFQzYnXAKUdWFx3maRoEbTxWv1vsZ6E07orj6NlUXw2cpH\nAyhcr3H2gllG9fMZyWDlhq5Ag/LTSicieHGQybwXhNtTKjaGOeOIPxu+nJgmX5GK\nOtffFVaotJ9ylG5GFU2vZ3IkknockVo5e59uSMIB6phK2NqcLu8="

    invoke-static {v1}, Lcom/autonavi/its/protocol/log/util/RSATool;->getPrivateKeyFromString(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/autonavi/its/protocol/log/util/RSATool;->decryptLargeData(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;->saveConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDecoratedUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/req/ReqDownLoadConfig;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/log/req/ReqDownLoadConfig;->getParamUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "POST"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqDownLoadConfig"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://118.190.42.220/config"

    return-object v0
.end method
