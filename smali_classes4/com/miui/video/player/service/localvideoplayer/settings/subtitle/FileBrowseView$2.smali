.class Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$2;
.super Ljava/lang/Object;
.source "FileBrowseView.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter$MyOnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 0

    return-void
.end method

.method public onItemClick(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->access$208(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-static {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->access$500(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;Ljava/lang/String;)V

    return-void
.end method
