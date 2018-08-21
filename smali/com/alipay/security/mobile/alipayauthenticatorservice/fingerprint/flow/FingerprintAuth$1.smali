.class Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;
.super Ljava/lang/Object;
.source "FingerprintAuth.java"

# interfaces
.implements Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->access$100(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->access$202(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;Z)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    iget-object v0, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintBroadcastUtil;->sendIdentifyStatusChangeMessage(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    iget-object v0, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintBroadcastUtil;->sendIdentifyStatusChangeMessage(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    iget-object v0, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mContext:Landroid/content/Context;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintBroadcastUtil;->sendIdentifyStatusChangeMessage(Landroid/content/Context;I)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->access$002(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;Z)Z

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    iput-boolean v2, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isFingerprintAuthSuccess:Z

    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->access$302(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;Z)Z

    goto :goto_0
.end method

.method public onAuthenticationFailed()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->access$100(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    iget-object v0, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintBroadcastUtil;->sendIdentifyStatusChangeMessage(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    iget-object v0, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintBroadcastUtil;->sendIdentifyStatusChangeMessage(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    iget-object v0, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mContext:Landroid/content/Context;

    const/16 v1, 0x67

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintBroadcastUtil;->sendIdentifyStatusChangeMessage(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->access$002(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;Z)Z

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    iput-boolean v2, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isFingerprintAuthSuccess:Z

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isNotMatch:Z

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->access$002(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;Z)Z

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->isFingerprintAuthSuccess:Z

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    iget-object v0, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintBroadcastUtil;->sendIdentifyStatusChangeMessage(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    iget-object v0, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintBroadcastUtil;->sendIdentifyStatusChangeMessage(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;

    iget-object v0, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;->mContext:Landroid/content/Context;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintBroadcastUtil;->sendIdentifyStatusChangeMessage(Landroid/content/Context;I)V

    return-void
.end method
