.class public Lcom/alipay/android/app/b/e/a;
.super Ljava/lang/Object;
.source "EditTextManager.java"


# static fields
.field private static a:Lcom/alipay/android/app/ui/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/b/e/a;->a:Lcom/alipay/android/app/ui/a/a/a;

    return-void
.end method

.method public static a()Lcom/alipay/android/app/ui/a/a/a;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/b/e/a;->a:Lcom/alipay/android/app/ui/a/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/ui/a/a/a;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/a/a/a;-><init>()V

    sput-object v0, Lcom/alipay/android/app/b/e/a;->a:Lcom/alipay/android/app/ui/a/a/a;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/b/e/a;->a:Lcom/alipay/android/app/ui/a/a/a;

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/b/e/a;->a:Lcom/alipay/android/app/ui/a/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/b/e/a;->a:Lcom/alipay/android/app/ui/a/a/a;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/ui/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
