.class Lcom/miui/video/player/service/presenter/VideoViewPresenter$3$1;
.super Ljava/lang/Object;
.source "VideoViewPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3$1;->this$1:Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;

    iput p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3$1;->val$what:I

    iput p3, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3$1;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3$1;->this$1:Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;

    iget-object v0, v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3$1;->val$what:I

    iget v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3$1;->val$extra:I

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$300(Lcom/miui/video/player/service/presenter/VideoViewPresenter;II)V

    return-void
.end method
