.class public Lcom/alipay/android/phone/inside/framework/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field private static mInstance:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->mInstance:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Application;

    sput-object p1, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->mInstance:Landroid/app/Application;

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->mInstance:Landroid/app/Application;

    goto :goto_0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method
