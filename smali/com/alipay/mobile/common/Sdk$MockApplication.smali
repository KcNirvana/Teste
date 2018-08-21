.class Lcom/alipay/mobile/common/Sdk$MockApplication;
.super Landroid/app/Application;
.source "Sdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/Sdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockApplication"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/Sdk$MockApplication;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method
