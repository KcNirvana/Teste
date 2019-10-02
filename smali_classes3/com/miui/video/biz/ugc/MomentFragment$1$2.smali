.class Lcom/miui/video/biz/ugc/MomentFragment$1$2;
.super Ljava/lang/Object;
.source "MomentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/MomentFragment$1;->onCallStateChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/biz/ugc/MomentFragment$1;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/MomentFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1$2;->this$1:Lcom/miui/video/biz/ugc/MomentFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$1$2;->this$1:Lcom/miui/video/biz/ugc/MomentFragment$1;

    iget-object v0, v0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$500(Lcom/miui/video/biz/ugc/MomentFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$1$2;->this$1:Lcom/miui/video/biz/ugc/MomentFragment$1;

    iget-object v0, v0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$200(Lcom/miui/video/biz/ugc/MomentFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$1$2;->this$1:Lcom/miui/video/biz/ugc/MomentFragment$1;

    iget-object v0, v0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$1$2;->this$1:Lcom/miui/video/biz/ugc/MomentFragment$1;

    iget-object v0, v0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object v0

    const-string v1, "small_video_continue_back"

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->resume(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
