.class public Lcom/alipay/android/phone/inside/security/a/b;
.super Ljava/lang/Object;
.source "TaobaoSecurityEncryptor.java"


# direct methods
.method private static a(Landroid/content/ContextWrapper;)Lcom/alipay/android/phone/inside/security/a/a;
    .locals 2

    invoke-static {p0}, Lcom/alipay/android/phone/inside/security/b/e;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/alipay/android/phone/inside/security/a/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/security/a/a;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alipay/android/phone/inside/security/a/a;->b:[B

    return-object v0
.end method

.method public static a(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/phone/inside/security/a/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/security/a/c;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/alipay/android/phone/inside/security/a/b;->a(Landroid/content/ContextWrapper;)Lcom/alipay/android/phone/inside/security/a/a;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/inside/security/a/c;->a(Ljava/lang/String;Lcom/alipay/android/phone/inside/security/a/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/phone/inside/security/a/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/security/a/c;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/alipay/android/phone/inside/security/a/b;->a(Landroid/content/ContextWrapper;)Lcom/alipay/android/phone/inside/security/a/a;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/inside/security/a/c;->b(Ljava/lang/String;Lcom/alipay/android/phone/inside/security/a/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
