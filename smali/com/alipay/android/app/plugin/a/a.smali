.class public Lcom/alipay/android/app/plugin/a/a;
.super Ljava/lang/Object;
.source "PhonecashierMspEngine.java"


# static fields
.field private static a:Lcom/alipay/android/app/plugin/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/plugin/a/a;->a:Lcom/alipay/android/app/plugin/b;

    return-void
.end method

.method public static a()Lcom/alipay/android/app/plugin/b;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/plugin/a/a;->a:Lcom/alipay/android/app/plugin/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->b()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/plugin/a/a;->a:Lcom/alipay/android/app/plugin/b;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/plugin/a/a;->a:Lcom/alipay/android/app/plugin/b;

    return-object v0
.end method

.method private static b()Lcom/alipay/android/app/plugin/b;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/alipay/android/app/pay/api/MspSdkEngine;

    invoke-direct {v0}, Lcom/alipay/android/app/pay/api/MspSdkEngine;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "cs"

    const-string/jumbo v3, "MspUtilReflectEx"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method
