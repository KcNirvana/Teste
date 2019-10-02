.class Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter$1;
.super Ljava/lang/Object;
.source "DialogSubtitleOnlineView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->access$400(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;)Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->access$400(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;)Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$Adapter;->getItem(I)Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$OnItemClickListener;->onItemClick(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;)V

    :cond_0
    return-void
.end method
