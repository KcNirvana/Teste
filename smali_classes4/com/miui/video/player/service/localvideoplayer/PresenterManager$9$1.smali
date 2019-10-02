.class Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9$1;
.super Ljava/lang/Object;
.source "PresenterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9;

.field final synthetic val$ret:I


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9;

    iput p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9$1;->val$ret:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9;

    iget-object v0, v0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    iget v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9$1;->val$ret:I

    invoke-static {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$1700(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;I)V

    return-void
.end method
