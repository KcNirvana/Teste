.class Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView$1;
.super Ljava/lang/Object;
.source "AudioSettingsView.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->setContent(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->isSelected()Z

    move-result v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->access$100(Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->access$200(Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->setAudioChange(I)V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$string;->lv_audio_changed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->setSelected(Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;

    invoke-virtual {v2, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->access$300(Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;)Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioAdapter;->refresh()V

    return-void
.end method
