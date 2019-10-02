.class Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$5;
.super Ljava/lang/Object;
.source "VideoPlusPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$5;->this$0:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$5;->this$0:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->onEnterEditMode()V

    return-void
.end method
