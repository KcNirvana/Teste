.class public Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrintsOperation;
.super Lcom/alipay/security/mobile/auth/AuthenticatorOperation;
.source "VendorFingerPrintsOperation.java"


# static fields
.field public static isInited:Z


# instance fields
.field public final aTAG:Ljava/lang/String;

.field public mVender_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrintsOperation;->isInited:Z

    return-void
.end method

.method public constructor <init>(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/security/mobile/auth/AuthenticatorOperation;-><init>(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    const-class v0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrintsOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrintsOperation;->aTAG:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrintsOperation;->mVender_type:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrintsOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    iget-object v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrintsOperation;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    iget v3, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrintsOperation;->mVender_type:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->processAsync(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;I)V

    return-void
.end method
