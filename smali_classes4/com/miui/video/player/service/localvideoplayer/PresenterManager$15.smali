.class Lcom/miui/video/player/service/localvideoplayer/PresenterManager$15;
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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$15;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$15;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->saveAiMusic(Z)V

    return-void
.end method
