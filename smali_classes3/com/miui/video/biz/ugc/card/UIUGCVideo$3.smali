.class Lcom/miui/video/biz/ugc/card/UIUGCVideo$3;
.super Ljava/lang/Object;
.source "UIUGCVideo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/card/UIUGCVideo;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$3;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/miui/video/framework/utils/EventUtils;->isClickTimeInterval()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$3;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$3;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$3;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$100(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onShare(Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    :cond_1
    return-void
.end method
