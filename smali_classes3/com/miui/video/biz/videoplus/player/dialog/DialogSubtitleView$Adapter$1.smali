.class Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter$1;
.super Ljava/lang/Object;
.source "DialogSubtitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;

.field final synthetic val$trackInfo:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter$1;->val$trackInfo:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->access$200(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;)Lcom/miui/video/biz/videoplus/player/IPlayerController;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter$1;->val$trackInfo:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-interface {p1, v0}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->selectSubtitleTrack(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->access$300(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;)Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter$1;->val$trackInfo:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;->access$400(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
