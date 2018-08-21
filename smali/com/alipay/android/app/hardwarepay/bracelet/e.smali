.class Lcom/alipay/android/app/hardwarepay/bracelet/e;
.super Ljava/lang/Object;
.source "BraceletPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay$3;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay$3;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/e;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    const/4 v1, 0x2

    sget-object v2, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->query:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    invoke-virtual {v2}, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/plugin/b;->hardwarePayOpt(ILjava/lang/String;)V

    return-void
.end method
