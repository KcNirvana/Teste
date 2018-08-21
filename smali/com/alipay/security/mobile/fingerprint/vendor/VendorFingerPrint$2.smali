.class Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$2;
.super Ljava/lang/Object;
.source "VendorFingerPrint.java"

# interfaces
.implements Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$2;->this$0:Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$2;->this$0:Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;

    invoke-static {v0, p1}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->access$102(Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;I)I

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$2;->this$0:Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;

    invoke-static {v0}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->access$200(Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$2;->this$0:Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;

    invoke-static {v0}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->access$200(Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
