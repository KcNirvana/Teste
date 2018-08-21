.class Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;
.super Ljava/lang/Object;
.source "FingerprintPayHelperImpl.java"

# interfaces
.implements Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "phonecashiermsp#fingerprint"

    const-string/jumbo v1, "AuthenticatorCallback.callback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6307\u7eb9\u652f\u4ed8init\u56de\u8c03,\u6709\u95ee\u9898\uff0c\u4e0d\u5e94\u8be5\u5230\u8fd9\u91cc.type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "phonecashiermsp#fingerprint"

    const-string/jumbo v1, "AuthenticatorCallback.callback"

    const-string/jumbo v2, "\u6307\u7eb9\u652f\u4ed8init\u56de\u8c03,\u72b6\u6001OK."

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
