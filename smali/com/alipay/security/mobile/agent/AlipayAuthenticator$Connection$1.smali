.class Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection$1;
.super Ljava/lang/Object;
.source "AlipayAuthenticator.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

.field final synthetic val$cb:Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection$1;->this$0:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    iput-object p2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection$1;->val$cb:Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection$1;->this$0:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    invoke-static {p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$702(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;)Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection$1;->val$cb:Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;->callback(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection$1;->this$0:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$702(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;)Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    invoke-static {v1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$902(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    return-void
.end method
