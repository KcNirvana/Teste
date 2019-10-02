.class public Lcom/miui/video/biz/videoplus/app/utils/HideUtils;
.super Ljava/lang/Object;
.source "HideUtils.java"


# static fields
.field public static final KEY_CHECK_SUCCESS:Ljava/lang/String; = "KEY_CHECK_SUCCESS"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->setVideoHidePassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->hideItems(Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->getVideoHidePassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->unHideItems(Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V

    return-void
.end method

.method private static getVideoHidePassword()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "VIDEOS_HIDE_PASSWORD"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static hideItems(Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;",
            "Lcom/miui/video/base/common/impl/IUIListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsHidded(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/video/base/common/task/TaskUtils;->getInstance()Lcom/miui/video/base/common/task/TaskUtils;

    move-result-object p0

    const-string v1, "com.miui.video.KEY_HIDE_VIDEOS"

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$4;

    invoke-direct {v2}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$4;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/miui/video/base/common/task/TaskUtils;->runDoInBackground(Ljava/lang/String;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->updateInTx(Ljava/util/List;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object p0

    sget-object v0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;->CHANGE:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;

    invoke-virtual {p0, v0, v3}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->notifyMediaChange(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    if-eqz p1, :cond_2

    const-string p0, "KEY_EDIT_MODE_EXIT"

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0, v3}, Lcom/miui/video/base/common/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static setVideoHidePassword(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "VIDEOS_HIDE_PASSWORD"

    invoke-virtual {v0, v1, p0}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static showHideVideoCheckDialog(Landroid/content/Context;Lcom/miui/video/framework/impl/IActionListener;)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->v_menu_hide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->v_input_password:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->v_cancel:I

    new-instance v6, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$5;

    invoke-direct {v6, p0, p1}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$5;-><init>(Landroid/content/Context;Lcom/miui/video/framework/impl/IActionListener;)V

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showVideoCheckPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;Z)V

    return-void
.end method

.method public static showHideVideoDialog(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;",
            "Lcom/miui/video/base/common/impl/IUIListener;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordHideItemSharepageLocal(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->getVideoHidePassword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/videoplus/R$string;->v_menu_hide:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->v_set_password:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->v_cancel:I

    sget v6, Lcom/miui/video/biz/videoplus/R$string;->v_ok:I

    new-instance v7, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;

    invoke-direct {v7, p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$1;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    move v6, v8

    invoke-static/range {v0 .. v6}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showVideoHidePassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->v_confirm_hide_videos:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->v_cancel:I

    sget v6, Lcom/miui/video/biz/videoplus/R$string;->v_ok:I

    new-instance v7, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$2;

    invoke-direct {v7, p0}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$2;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$3;

    invoke-direct {v8, p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$3;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    move-object v6, v8

    move v7, v9

    invoke-static/range {v0 .. v7}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->t_check_hide_file:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    :goto_0
    return-void
.end method

.method public static showUnHideVideoDialog(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;",
            "Lcom/miui/video/base/common/impl/IUIListener;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordHideItemSharepageLocal(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->v_confirm_unhide_videos:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/videoplus/R$string;->v_cancel:I

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->v_ok:I

    new-instance v6, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$6;

    invoke-direct {v6, p0}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$6;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$7;

    invoke-direct {v7, p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$7;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V

    const/4 v8, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p0

    sget p1, Lcom/miui/video/biz/videoplus/R$string;->t_check_unhide_file:I

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    :goto_0
    return-void
.end method

.method private static unHideItems(Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;",
            "Lcom/miui/video/base/common/impl/IUIListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsHidded(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/video/base/common/task/TaskUtils;->getInstance()Lcom/miui/video/base/common/task/TaskUtils;

    move-result-object p0

    const-string v1, "com.miui.video.KEY_UNHIDE_VIDEOS"

    new-instance v3, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$8;

    invoke-direct {v3}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils$8;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v0, v3}, Lcom/miui/video/base/common/task/TaskUtils;->runDoInBackground(Ljava/lang/String;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->updateInTx(Ljava/util/List;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object p0

    sget-object v0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;->LOAD_COMPLETED:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;

    invoke-virtual {p0, v0, v4}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->notifyMediaChange(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    if-eqz p1, :cond_2

    const-string p0, "KEY_EDIT_MODE_EXIT"

    invoke-interface {p1, p0, v2, v4}, Lcom/miui/video/base/common/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method
