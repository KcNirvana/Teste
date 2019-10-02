.class Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$1;
.super Ljava/lang/Object;
.source "DialogSubtitleOnlineView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->getSubFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->access$000(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleUtil;->createOnlineSubtitleLocalName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$string;->plus_player_subtitle_online_download_start:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->access$100(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;)Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSubtitle;->getIDSubtitleFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/AsyncSubtitles;->downloadSubByIdToPath(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->plus_player_subtitle_online_download_fail:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    :goto_0
    return-void
.end method
