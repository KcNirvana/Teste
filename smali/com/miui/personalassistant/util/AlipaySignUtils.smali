.class public Lcom/miui/personalassistant/util/AlipaySignUtils;
.super Ljava/lang/Object;
.source "AlipaySignUtils.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final SIGN_ALGORITHMS:Ljava/lang/String; = "SHA1WithRSA"

.field private static final SIGN_SHA256RSA_ALGORITHMS:Ljava/lang/String; = "SHA256WithRSA"

.field private static final TAG:Ljava/lang/String; = "AlipaySignUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAlgorithms(Z)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "SHA256WithRSA"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "SHA1WithRSA"

    goto :goto_0
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    :try_start_0
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/4 v6, 0x0

    invoke-static {p1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string/jumbo v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {p2}, Lcom/miui/personalassistant/util/AlipaySignUtils;->getAlgorithms(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    return-object v6

    :catch_0
    move-exception v0

    const-string/jumbo v6, "AlipaySignUtils"

    const-string/jumbo v7, "Exception"

    invoke-static {v6, v7, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    goto :goto_0
.end method
