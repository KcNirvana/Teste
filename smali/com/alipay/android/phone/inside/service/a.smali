.class public Lcom/alipay/android/phone/inside/service/a;
.super Lcom/alipay/android/phone/inside/a/e$a;
.source "InsideInteractionStub.java"


# instance fields
.field private final a:Lcom/alipay/android/phone/inside/proxy/a;

.field private final b:Landroid/content/Context;

.field private c:Lcom/alipay/android/phone/inside/service/BinderStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/a/e$a;-><init>()V

    sget-object v0, Lcom/alipay/android/phone/inside/service/BinderStatus;->SUCCESS:Lcom/alipay/android/phone/inside/service/BinderStatus;

    iput-object v0, p0, Lcom/alipay/android/phone/inside/service/a;->c:Lcom/alipay/android/phone/inside/service/BinderStatus;

    iput-object p1, p0, Lcom/alipay/android/phone/inside/service/a;->b:Landroid/content/Context;

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/a;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/inside/proxy/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/service/a;->a:Lcom/alipay/android/phone/inside/proxy/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/phone/inside/service/BinderStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/inside/service/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/alipay/android/phone/inside/service/a;->c:Lcom/alipay/android/phone/inside/service/BinderStatus;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/a;->c:Lcom/alipay/android/phone/inside/service/BinderStatus;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/service/BinderStatus;->getValue()I

    move-result v0

    return v0
.end method

.method public a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/a;->a:Lcom/alipay/android/phone/inside/proxy/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/inside/proxy/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/alipay/android/phone/inside/a/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/a;->a:Lcom/alipay/android/phone/inside/proxy/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/inside/proxy/a;->a(Lcom/alipay/android/phone/inside/a/f;)V

    return-void
.end method

.method public b(Lcom/alipay/android/phone/inside/a/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/a;->a:Lcom/alipay/android/phone/inside/proxy/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/inside/proxy/a;->b(Lcom/alipay/android/phone/inside/a/f;)V

    return-void
.end method
