.class public Lcom/miui/video/common/component/arch/BaseModuleApplication;
.super Landroid/app/Application;
.source "BaseModuleApplication.java"


# static fields
.field private static sInstance:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getModuleApplication()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/miui/video/common/component/arch/BaseModuleApplication;->sInstance:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lcom/miui/video/common/component/arch/BaseModuleApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/miui/video/common/component/arch/BaseModuleApplication;->sInstance:Landroid/app/Application;

    return-void
.end method
