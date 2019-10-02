.class Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$1;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
