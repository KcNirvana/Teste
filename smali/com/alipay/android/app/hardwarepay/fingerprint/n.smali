.class public abstract Lcom/alipay/android/app/hardwarepay/fingerprint/n;
.super Lcom/alipay/android/app/hardwarepay/base/a;
.source "FingerprintPayHelper.java"


# static fields
.field private static a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/base/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/android/app/hardwarepay/fingerprint/n;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;

    invoke-direct {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;-><init>()V

    sput-object v0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;ILjava/lang/String;)I
.end method

.method public abstract a(Ljava/lang/String;)I
.end method

.method public abstract a(ILjava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract a(IILjava/lang/String;ILjava/lang/Object;Landroid/content/Context;)V
.end method

.method public abstract b()[Ljava/lang/String;
.end method

.method public abstract c()I
.end method

.method public abstract d()V
.end method
