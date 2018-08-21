.class public Lcom/alipay/android/phone/inside/log/b/a;
.super Ljava/lang/Object;
.source "ContextManager.java"


# static fields
.field private static a:Lcom/alipay/android/phone/inside/log/api/a;


# direct methods
.method public static a()Lcom/alipay/android/phone/inside/log/api/a;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/log/b/a;->a:Lcom/alipay/android/phone/inside/log/api/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/log/b/b;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/b/b;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/log/b/a;->a:Lcom/alipay/android/phone/inside/log/api/a;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/inside/log/b/a;->a:Lcom/alipay/android/phone/inside/log/api/a;

    return-object v0
.end method

.method public static a(Lcom/alipay/android/phone/inside/log/api/a;)V
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/alipay/android/phone/inside/log/b/a;->a:Lcom/alipay/android/phone/inside/log/api/a;

    goto :goto_0
.end method
