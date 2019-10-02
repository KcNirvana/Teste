.class public Lcom/miui/video/base/account/VideoMiAccountManager$Holder;
.super Ljava/lang/Object;
.source "VideoMiAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/account/VideoMiAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field private static INCSTANCE:Lcom/miui/video/base/account/VideoMiAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/video/base/account/VideoMiAccountManager;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/base/account/VideoMiAccountManager;-><init>(Landroid/content/Context;Lcom/miui/video/base/account/VideoMiAccountManager$1;)V

    sput-object v0, Lcom/miui/video/base/account/VideoMiAccountManager$Holder;->INCSTANCE:Lcom/miui/video/base/account/VideoMiAccountManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/miui/video/base/account/VideoMiAccountManager;
    .locals 1

    sget-object v0, Lcom/miui/video/base/account/VideoMiAccountManager$Holder;->INCSTANCE:Lcom/miui/video/base/account/VideoMiAccountManager;

    return-object v0
.end method
