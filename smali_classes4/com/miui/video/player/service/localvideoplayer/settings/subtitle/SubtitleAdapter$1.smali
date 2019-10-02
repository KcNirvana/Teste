.class Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$1;
.super Ljava/lang/Object;
.source "SubtitleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;

    iput p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;->access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;)Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;->onItemClick(I)V

    return-void
.end method
