.class Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter$1;
.super Ljava/lang/Object;
.source "DialogAudioView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;

.field final synthetic val$trackInfo:Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter$1;->val$trackInfo:Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;->access$300(Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;)Lcom/miui/video/biz/videoplus/player/IPlayerController;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter$1;->val$trackInfo:Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;

    invoke-interface {p1, v0}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->selectAudioTrack(Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
