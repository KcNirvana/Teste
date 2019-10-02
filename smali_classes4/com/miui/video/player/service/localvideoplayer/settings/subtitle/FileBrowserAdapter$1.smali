.class Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$1;
.super Ljava/lang/Object;
.source "FileBrowserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;

.field final synthetic val$wrapper:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$1;->val$wrapper:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$1;->val$wrapper:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;)Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$MyOnItemClickListener;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$MyOnItemClickListener;->onItemClick(Ljava/lang/String;)V

    return-void
.end method
