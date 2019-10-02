.class Lcom/miui/video/player/service/localvideoplayer/PresenterManager$16;
.super Ljava/lang/Object;
.source "PresenterManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/PresenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$16;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$16;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$2102(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Z)Z

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$16;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->access$100(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
