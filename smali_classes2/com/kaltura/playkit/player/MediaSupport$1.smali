.class final Lcom/kaltura/playkit/player/MediaSupport$1;
.super Ljava/lang/Object;
.source "MediaSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/player/MediaSupport;->initializeDrm(Landroid/content/Context;Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$drmInitCallback:Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/MediaSupport$1;->val$drmInitCallback:Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->access$000()V

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaSupport$1;->val$drmInitCallback:Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/kaltura/playkit/player/MediaSupport;->access$100(Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;ZLjava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->access$200()Lcom/kaltura/playkit/PKLog;

    move-result-object v2

    const-string v3, "Widevine provisioning has failed"

    invoke-virtual {v2, v3, v1}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/kaltura/playkit/player/MediaSupport$1;->val$drmInitCallback:Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;

    invoke-static {v2, v0, v1}, Lcom/kaltura/playkit/player/MediaSupport;->access$100(Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;ZLjava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method
