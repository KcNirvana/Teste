.class Lcom/alipay/android/phone/inside/service/q;
.super Lcom/alipay/android/phone/inside/a/f$a;
.source "InsideOperationServiceHelper.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/service/q;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/a/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/q;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$000(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Lcom/alipay/android/phone/inside/service/InsideOperationService$UnLockScreenListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/q;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$000(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Lcom/alipay/android/phone/inside/service/InsideOperationService$UnLockScreenListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationService$UnLockScreenListener;->unLockScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
