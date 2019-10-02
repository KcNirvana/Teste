.class Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$5;
.super Ljava/lang/Object;
.source "UGCVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$5;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$5;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$900(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$5;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$1000(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$5;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->release()V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$5;->this$0:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->access$1100(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V

    return-void
.end method
