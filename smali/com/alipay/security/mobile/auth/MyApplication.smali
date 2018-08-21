.class public Lcom/alipay/security/mobile/auth/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static mcontext:Lcom/alipay/security/mobile/auth/MyApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/alipay/security/mobile/auth/MyApplication;->mcontext:Lcom/alipay/security/mobile/auth/MyApplication;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/alipay/security/mobile/auth/MyApplication;->mcontext:Lcom/alipay/security/mobile/auth/MyApplication;

    return-void
.end method
