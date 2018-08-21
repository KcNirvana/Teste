.class Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter$1;
.super Ljava/lang/Object;
.source "FingerprintAuthenticatorAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;

.field final synthetic val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

.field final synthetic val$messages:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;Landroid/os/Bundle;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter$1;->this$0:Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;

    iput-object p2, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter$1;->val$messages:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter$1;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter$1;->this$0:Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;

    invoke-static {v0}, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->access$000(Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter$1;->val$messages:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter$1;->val$authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->processCommmandAsync(Landroid/os/Bundle;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    return-void
.end method
