.class public Lcom/xiaomi/passport/accountmanager/MiAuthenticatorService;
.super Landroid/app/Service;
.source "MiAuthenticatorService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalAuthenticatorSer"


# instance fields
.field private mAuthenticator:Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string p1, "LocalAuthenticatorSer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return the AccountAuthenticator binder of package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/passport/accountmanager/MiAuthenticatorService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAuthenticatorService;->mAuthenticator:Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;

    invoke-virtual {p1}, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAuthenticatorService;->mAuthenticator:Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;

    return-void
.end method
