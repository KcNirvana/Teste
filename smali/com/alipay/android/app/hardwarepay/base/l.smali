.class Lcom/alipay/android/app/hardwarepay/base/l;
.super Ljava/lang/Object;
.source "HardwarePayValidateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/base/d;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/base/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/base/l;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/l;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->b(Lcom/alipay/android/app/hardwarepay/base/d;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
