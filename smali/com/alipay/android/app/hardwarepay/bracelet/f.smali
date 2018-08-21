.class public abstract Lcom/alipay/android/app/hardwarepay/bracelet/f;
.super Lcom/alipay/android/app/hardwarepay/base/a;
.source "BraceletPayHelper.java"


# static fields
.field private static a:Lcom/alipay/android/app/hardwarepay/bracelet/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/base/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/android/app/hardwarepay/bracelet/f;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;

    invoke-direct {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;-><init>()V

    sput-object v0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;ILjava/lang/String;)I
.end method

.method public abstract a(IILjava/lang/String;ILjava/lang/Object;Landroid/content/Context;)V
.end method
