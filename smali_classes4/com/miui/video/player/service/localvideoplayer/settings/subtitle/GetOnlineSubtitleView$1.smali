.class Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;
.super Ljava/lang/Object;
.source "GetOnlineSubtitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;->getSubFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "subtitle"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$200(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleUtil;->createOnlineSubtitleLocalName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubAdapter;->disableAllItemChoser()V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$string;->lv_subtitle_onlinesub_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/OSubtitle;->getIDSubtitleFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->downloadSubByIdToPath(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$string;->lv_subtitle_onlinesub_save_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$500(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_5

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->closeDialog()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$600(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$700(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$800(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$800(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/ORequest;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "eng"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v2, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/ORequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    move-result-object p1

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/ORequest;->getLanguages()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->setLanguagesArray([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->setNeededParamsToSearch(Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/ORequest;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/AsyncSubtitles;->getPossibleSubtitle()Z

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->access$900(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;)Landroid/widget/ViewSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->showPrevious()V

    :cond_7
    :goto_0
    return-void
.end method
