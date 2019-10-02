.class Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter$1;
.super Ljava/lang/Object;
.source "DialogShareScreenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;

.field final synthetic val$device:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter$1;->val$device:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->access$400(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;)Lcom/miui/video/biz/videoplus/player/IPlayerController;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter$1;->val$device:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    invoke-interface {p1, v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->connectDevice(Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
