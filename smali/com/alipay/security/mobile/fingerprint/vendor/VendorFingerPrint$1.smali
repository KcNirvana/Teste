.class Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$1;
.super Ljava/lang/Object;
.source "VendorFingerPrint.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$1;->this$0:Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-direct {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>()V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->setType(I)V

    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$1;->this$0:Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$1;->this$0:Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;

    invoke-static {v1}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->access$000(Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "alipays://platformapi/startApp?appId=20000082"

    invoke-static {v1, v2, v0}, Lcom/alipay/security/mobile/util/CommonUtils;->notifyUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
