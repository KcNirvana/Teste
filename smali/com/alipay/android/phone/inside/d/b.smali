.class public Lcom/alipay/android/phone/inside/d/b;
.super Ljava/lang/Object;
.source "DefaultConfig.java"

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/common/setting/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/alipay/android/phone/mrpc/core/ac;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/phone/inside/d/b;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/k;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
