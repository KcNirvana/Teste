.class Lcom/alipay/android/phone/inside/service/v;
.super Ljava/lang/Object;
.source "InsideOperationServiceHelper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/service/v;->b:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    iput-boolean p2, p0, Lcom/alipay/android/phone/inside/service/v;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/phone/inside/service/v;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/v;->b:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$802(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Lcom/alipay/android/phone/inside/a/e;)Lcom/alipay/android/phone/inside/a/e;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/v;->b:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$302(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Lcom/alipay/android/phone/inside/a/c;)Lcom/alipay/android/phone/inside/a/c;

    goto :goto_0
.end method
