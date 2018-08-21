.class public Lcom/alipay/android/phone/inside/e/a;
.super Ljava/lang/Object;
.source "StorageInit.java"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/e/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/inside/e/a;->a:Landroid/content/Context;

    return-void
.end method
