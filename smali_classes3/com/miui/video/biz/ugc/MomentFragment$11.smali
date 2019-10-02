.class Lcom/miui/video/biz/ugc/MomentFragment$11;
.super Ljava/lang/Object;
.source "MomentFragment.java"

# interfaces
.implements Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/MomentFragment;->registerNetworkReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/MomentFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/MomentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$11;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInternetConnected()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$11;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$11;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->onInternetAvailable(Z)V

    :cond_0
    return-void
.end method

.method public onInternetDisConnected()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$11;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$11;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->onInternetAvailable(Z)V

    :cond_0
    return-void
.end method

.method public onMobileConnect()V
    .locals 0

    return-void
.end method

.method public onWifiConnected()V
    .locals 0

    return-void
.end method

.method public onWifiDisconnected()V
    .locals 0

    return-void
.end method
