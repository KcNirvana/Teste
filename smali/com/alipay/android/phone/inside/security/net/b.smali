.class public Lcom/alipay/android/phone/inside/security/net/b;
.super Ljava/lang/Object;
.source "PublicKeyManager.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/inside/security/net/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/alipay/android/phone/inside/security/net/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/alipay/android/phone/inside/security/net/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sp_inside_public_key"

    const-string/jumbo v1, "rpc"

    const-string/jumbo v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAizFn/4NljF0reFYZtMFP+M9Hv5dnOJYtxAu1BtBFah4OE08+ZxLMnqUTPX7aZ4HWHHG9IuYn561WoaY2kHhR8kEm7MxrRLGOCGIV7hYAB6eRK4FhI8utKt1ntw5Y4QTuQxAwV59bcA3jmHa5T50kLZxSPfNQUAcLzSNp1XOLYT23WCHXRWHv+WJHU0e03kefIULR9hTrHZqLHfQLBVCrvavrVCXFrJrSsnb9CILb9kVEPqoVo2ipGSrXX9roqzi/TJtjYhomulnhfL4q8Nfjsk7kq9alq4pc9bZ4muVn3wp9MPVZWhWDMEXU7GXGVM3kwzOPQwSv7VOdCr+GUqkMaQIDAQAB"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/inside/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/inside/security/net/b;->a:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "get rpc pk"

    sget-object v1, Lcom/alipay/android/phone/inside/security/net/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/inside/security/net/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/phone/inside/security/net/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x1e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "inside"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "set rpc pk"

    invoke-static {v0, p0}, Lcom/alipay/android/phone/inside/security/net/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/android/phone/inside/security/net/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sput-object p0, Lcom/alipay/android/phone/inside/security/net/b;->a:Ljava/lang/String;

    const-string/jumbo v0, "sp_inside_public_key"

    const-string/jumbo v1, "rpc"

    sget-object v2, Lcom/alipay/android/phone/inside/security/net/b;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/inside/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/alipay/android/phone/inside/security/net/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sp_inside_public_key"

    const-string/jumbo v1, "log"

    const-string/jumbo v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDVimG0UFl3/sujKEARpmOxoweaqHtRK1EY03hd+bYFTe6Bnm/t4nMNEBHr2yF0GC2PmdJ5a5h2/ppKruYYXrTsH4ierw7kS62I/9mGU6k2sqYMolO2tA6LM/0OnRo0QXQA07tmzxcirY8aW/rpUQnzDZJJv7zgDnrJkoXndd4M9wIDAQAB"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/inside/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/inside/security/net/b;->b:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "get log pk"

    sget-object v1, Lcom/alipay/android/phone/inside/security/net/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/inside/security/net/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/phone/inside/security/net/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "set log pk"

    invoke-static {v0, p0}, Lcom/alipay/android/phone/inside/security/net/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/android/phone/inside/security/net/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sput-object p0, Lcom/alipay/android/phone/inside/security/net/b;->b:Ljava/lang/String;

    const-string/jumbo v0, "sp_inside_public_key"

    const-string/jumbo v1, "log"

    sget-object v2, Lcom/alipay/android/phone/inside/security/net/b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/inside/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/inside/security/net/b;->b:Ljava/lang/String;

    const-string/jumbo v0, "sp_inside_public_key"

    const-string/jumbo v1, "log"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/inside/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v2

    const-string/jumbo v3, "security"

    const-string/jumbo v4, "CheckPublicKeyNull"

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v5, ""

    aput-object v5, v0, v1

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v2, "MAGIC"

    invoke-static {v2, p0}, Lcom/alipay/android/phone/inside/security/b/d;->a(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v2

    const-string/jumbo v3, "security"

    const-string/jumbo v4, "CheckPublicKeyEx"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1
.end method

.method public static d()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/inside/security/net/b;->a:Ljava/lang/String;

    const-string/jumbo v0, "sp_inside_public_key"

    const-string/jumbo v1, "rpc"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/inside/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
