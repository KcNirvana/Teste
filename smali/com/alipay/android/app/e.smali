.class Lcom/alipay/android/app/e;
.super Ljava/lang/Object;
.source "DefaultServiceAdapter.java"

# interfaces
.implements Lcom/alipay/android/app/l;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/m;

.field final synthetic b:Lcom/alipay/android/app/d;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/d;Lcom/alipay/android/app/m;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/e;->b:Lcom/alipay/android/app/d;

    iput-object p2, p0, Lcom/alipay/android/app/e;->a:Lcom/alipay/android/app/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/e;->a:Lcom/alipay/android/app/m;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/android/app/m;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
