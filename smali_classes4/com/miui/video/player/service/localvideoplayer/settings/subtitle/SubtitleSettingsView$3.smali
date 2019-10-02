.class Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$3;
.super Ljava/lang/Object;
.source "SubtitleSettingsView.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/interfaces/IViewSwitcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showNext()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->access$300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    return-void
.end method

.method public showPrevious()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->access$300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showPrevious()V

    return-void
.end method
