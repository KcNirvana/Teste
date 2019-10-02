.class Lcom/miui/video/player/service/localvideoplayer/PresenterManager$10;
.super Ljava/lang/Object;
.source "PresenterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->matchMusic(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

.field final synthetic val$ret:I


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$10;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    iput p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$10;->val$ret:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$10;->val$ret:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$10;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$1800(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$10;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    iget v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$10;->val$ret:I

    invoke-static {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$1700(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;I)V

    :goto_0
    return-void
.end method
