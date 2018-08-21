.class public Lcom/ali/user/mobile/authlogin/a;
.super Ljava/lang/Object;
.source "AlipaySsoAPIFactory.java"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/ali/user/mobile/authlogin/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ali/user/mobile/authlogin/exception/ParamNullException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string/jumbo v0, "AliAuth_AlipaySsoAPIFactory"

    const-string/jumbo v1, "createSsoApi param is null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/authlogin/exception/ParamNullException;

    const-string/jumbo v1, "creatSsoApi param context is null"

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/authlogin/exception/ParamNullException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "AliAuth_AlipaySsoAPIFactory"

    const-string/jumbo v1, "createSsoApi normal"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/authlogin/a/a/a;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/authlogin/a/a/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
