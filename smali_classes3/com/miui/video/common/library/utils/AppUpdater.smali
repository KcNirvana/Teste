.class public Lcom/miui/video/common/library/utils/AppUpdater;
.super Ljava/lang/Object;
.source "AppUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/library/utils/AppUpdater$IAppUpdater;
    }
.end annotation


# static fields
.field private static volatile appUpdater:Lcom/miui/video/common/library/utils/AppUpdater$IAppUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUpdate(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/miui/video/common/library/utils/AppUpdater;->appUpdater:Lcom/miui/video/common/library/utils/AppUpdater$IAppUpdater;

    invoke-interface {v0, p0}, Lcom/miui/video/common/library/utils/AppUpdater$IAppUpdater;->checkUpdate(Landroid/app/Activity;)V

    return-void
.end method

.method public static init(Lcom/miui/video/common/library/utils/AppUpdater$IAppUpdater;)V
    .locals 0

    sput-object p0, Lcom/miui/video/common/library/utils/AppUpdater;->appUpdater:Lcom/miui/video/common/library/utils/AppUpdater$IAppUpdater;

    return-void
.end method
