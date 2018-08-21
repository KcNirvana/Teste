.class public Lcom/alipay/android/phone/inside/c/b;
.super Ljava/lang/Object;
.source "InsideFramework.java"


# static fields
.field private static a:Lcom/alipay/android/phone/inside/log/api/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/inside/c/a/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/c/a/a;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/c/b;->a:Lcom/alipay/android/phone/inside/log/api/a;

    return-void
.end method

.method public static a()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/Sdk$a;->a(Landroid/app/Application;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/c/b;->b()V

    invoke-static {}, Lcom/alipay/android/phone/inside/c/b;->c()V

    return-void
.end method

.method private static b()V
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/c/b;->a:Lcom/alipay/android/phone/inside/log/api/a;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->init(Lcom/alipay/android/phone/inside/log/api/a;)V

    return-void
.end method

.method private static c()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/e/a;->a(Landroid/content/Context;)V

    return-void
.end method
