.class public Lcom/alipay/android/app/c/b;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/content/res/Resources;

.field private static c:Lcom/alipay/android/app/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/c/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/alipay/android/app/c/b;->b:Landroid/content/res/Resources;

    sput-object v0, Lcom/alipay/android/app/c/b;->c:Lcom/alipay/android/app/c/a;

    return-void
.end method

.method public static a()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/c/b;->b:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static a(Lcom/alipay/android/app/c/a;)V
    .locals 0

    sput-object p0, Lcom/alipay/android/app/c/b;->c:Lcom/alipay/android/app/c/a;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/c/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Lcom/alipay/android/app/c/a;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/c/b;->c:Lcom/alipay/android/app/c/a;

    return-object v0
.end method
