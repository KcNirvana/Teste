.class Lcom/alipay/android/app/hardwarepay/fingerprint/m;
.super Ljava/lang/Object;
.source "FingerPrintPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a()Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->d()V

    return-void
.end method
