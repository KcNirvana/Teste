.class Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$2;
.super Ljava/lang/Object;
.source "PlayerBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->initFindViews()V
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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$2;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$2;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onEnterTransitionEnd()V

    return-void
.end method
