.class Lcom/kaltura/playkit/drm/WidevineClassicDrm$1;
.super Landroid/drm/DrmManagerClient;
.source "WidevineClassicDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/drm/WidevineClassicDrm;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/drm/WidevineClassicDrm;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/drm/WidevineClassicDrm;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$1;->this$0:Lcom/kaltura/playkit/drm/WidevineClassicDrm;

    invoke-direct {p0, p2}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/kaltura/playkit/drm/WidevineClassicDrm$1;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid/drm/DrmManagerClient;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/drm/DrmManagerClient;->finalize()V

    throw v0
.end method
