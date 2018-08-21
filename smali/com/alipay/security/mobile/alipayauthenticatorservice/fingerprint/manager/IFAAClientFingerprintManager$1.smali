.class Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager$1;
.super Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationCallback;
.source "IFAAClientFingerprintManager.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;

.field final synthetic val$callback:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;

    iput-object p2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager$1;->val$callback:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;

    invoke-direct {p0}, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager$1;->val$callback:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager$1;->val$callback:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;

    invoke-interface {v0, p1, p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager$1;->val$callback:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager$1;->val$callback:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;

    invoke-interface {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;->onAuthenticationFailed()V

    :cond_0
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onAuthenticationSucceeded(Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationResult;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager$1;->val$callback:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager$1;->val$callback:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;

    invoke-interface {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;->onAuthenticationSucceeded()V

    :cond_0
    return-void
.end method
