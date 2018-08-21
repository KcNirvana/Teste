.class public Lcom/ali/user/mobile/d/b;
.super Ljava/lang/Object;
.source "DataEncryptor.java"


# direct methods
.method private static a(Landroid/content/ContextWrapper;)Lcom/ali/user/mobile/d/a;
    .locals 2

    invoke-static {p0}, Lcom/alipay/android/phone/inside/security/b/e;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/ali/user/mobile/d/a;

    invoke-direct {v0}, Lcom/ali/user/mobile/d/a;-><init>()V

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/d/a;->b:[B

    return-object v0
.end method

.method public static a(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/ali/user/mobile/d/c;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/d/c;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/ali/user/mobile/d/b;->a(Landroid/content/ContextWrapper;)Lcom/ali/user/mobile/d/a;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ali/user/mobile/d/c;->a(Ljava/lang/String;Lcom/ali/user/mobile/d/a;)Ljava/lang/String;

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

    new-instance v0, Lcom/ali/user/mobile/d/c;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/d/c;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/ali/user/mobile/d/b;->a(Landroid/content/ContextWrapper;)Lcom/ali/user/mobile/d/a;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ali/user/mobile/d/c;->b(Ljava/lang/String;Lcom/ali/user/mobile/d/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
