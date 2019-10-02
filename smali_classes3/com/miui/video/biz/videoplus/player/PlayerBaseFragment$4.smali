.class Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$4;
.super Ljava/lang/Object;
.source "PlayerBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$4;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$4;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->access$000(Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$4;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->access$000(Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$4;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$4;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;

    iget v1, v1, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->mPosition:I

    invoke-interface {v0, v1, p1}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->selectEntity(IZ)V

    return-void
.end method
