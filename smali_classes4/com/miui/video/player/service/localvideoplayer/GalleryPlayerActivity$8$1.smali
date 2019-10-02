.class Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;
.super Ljava/lang/Object;
.source "GalleryPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;

.field final synthetic val$finalFpsI:I

.field final synthetic val$max:I

.field final synthetic val$min:I


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;III)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;

    iput p2, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;->val$min:I

    iput p3, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;->val$max:I

    iput p4, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;->val$finalFpsI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;

    iget-object v0, v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$000(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;

    iget-object v0, v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$000(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;

    iget-object v0, v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    iget-boolean v3, v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mSupportSlide:Z

    iget v4, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;->val$min:I

    iget v5, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;->val$max:I

    iget v6, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;->val$finalFpsI:I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;

    iget-object v0, v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$1200(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Z

    move-result v7

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;

    iget-object v0, v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    iget-object v8, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;

    iget-object v8, v8, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v8}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$1600(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;

    iget-object v9, v9, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v9}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$800(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getRealFilePathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->initLocalPlay(ZZIIIZLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;

    iget-object v0, v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$1700(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V

    return-void
.end method
