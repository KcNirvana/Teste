.class public Lcom/alipay/android/app/MspInsideService$a;
.super Lcom/alipay/android/app/i$a;
.source "MspInsideService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/MspInsideService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/MspInsideService;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/MspInsideService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/MspInsideService$a;->a:Lcom/alipay/android/app/MspInsideService;

    invoke-direct {p0}, Lcom/alipay/android/app/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/alipay/android/app/b/c/b;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/alipay/android/app/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/android/app/p;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/p;-><init>(Lcom/alipay/android/app/MspInsideService$a;Lcom/alipay/android/app/m;)V

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/b/d/b;->a(Lcom/alipay/android/app/l;)V

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMspInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/MspInitAssistService;->registerCallback(Lcom/alipay/android/app/l;)V

    goto :goto_0
.end method

.method public b(Lcom/alipay/android/app/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/b;->b()V

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMspInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/MspInitAssistService;->unregisterCallback()V

    :cond_0
    return-void
.end method
