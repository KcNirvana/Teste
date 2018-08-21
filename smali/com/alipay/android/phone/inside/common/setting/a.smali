.class public Lcom/alipay/android/phone/inside/common/setting/a;
.super Ljava/lang/Object;
.source "InsideSetting.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/android/phone/inside/common/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "MOBILE_GW"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/inside/common/setting/DevSettingConfig;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    :cond_1
    return-object v0
.end method
