.class Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$1;
.super Ljava/lang/Object;
.source "DialogShareScreenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;->access$000(Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
