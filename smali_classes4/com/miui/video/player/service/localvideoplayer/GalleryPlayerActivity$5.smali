.class Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$5;
.super Ljava/lang/Object;
.source "GalleryPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$5;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, " onRequestPermissionsResult : request permission failed, return"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$5;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->finish()V

    return-void
.end method
