.class Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "GalleryPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;
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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "screensaver-action-kill"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$6;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->finish()V

    :cond_0
    return-void
.end method
