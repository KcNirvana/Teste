.class final Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mSetSrcRunnable$1;
.super Ljava/lang/Object;
.source "CmsVideoView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mSetSrcRunnable$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mSetSrcRunnable$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mSetSrcRunnable$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;->access$getTrueUrl$p(Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView$mSetSrcRunnable$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;->access$getMOffset$p(Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;->access$setDataSource$s-322805097(Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method
