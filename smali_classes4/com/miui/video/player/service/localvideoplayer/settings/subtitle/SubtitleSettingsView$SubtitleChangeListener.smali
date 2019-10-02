.class Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$SubtitleChangeListener;
.super Ljava/lang/Object;
.source "SubtitleSettingsView.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubtitleChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$SubtitleChangeListener;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$SubtitleChangeListener;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->access$400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->isSelected()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$SubtitleChangeListener;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->access$500(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$SubtitleChangeListener;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->access$600(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->setSubtitleChange(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$SubtitleChangeListener;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->access$700(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->setSubtitleChange(I)V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$SubtitleChangeListener;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-virtual {v2}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/video/player/service/R$string;->lv_subtitle_changed:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$SubtitleChangeListener;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-static {v3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->access$400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    if-ne p1, v2, :cond_3

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$SubtitleChangeListener;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-static {v3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->access$400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    invoke-virtual {v3, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->setSelected(Z)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$SubtitleChangeListener;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-static {v3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->access$400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->setSelected(Z)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$SubtitleChangeListener;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-static {v3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->access$400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    invoke-virtual {v3, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->setSelected(Z)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$SubtitleChangeListener;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->access$800(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleAdapter;->refresh()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView$SubtitleChangeListener;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->refresh()V

    return-void
.end method
