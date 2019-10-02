.class public Lcom/miui/video/common/library/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static final DURATION_2000:I = 0x7d0

.field private static final DURATION_3000:I = 0xbb8

.field public static final TIPS:I = 0x1

.field public static final TOAST:I = 0x0

.field private static final TYPE_TIPS:I = 0x1

.field private static final TYPE_TOAST:I

.field private static volatile mInstance:Lcom/miui/video/common/library/utils/ToastUtils;


# instance fields
.field private mShowTime:J

.field private mToast:Landroid/widget/Toast;

.field private mType:I

.field private vLayout:Landroid/view/View;

.field private vTxtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/common/library/utils/ToastUtils;
    .locals 2

    sget-object v0, Lcom/miui/video/common/library/utils/ToastUtils;->mInstance:Lcom/miui/video/common/library/utils/ToastUtils;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/common/library/utils/ToastUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/common/library/utils/ToastUtils;->mInstance:Lcom/miui/video/common/library/utils/ToastUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/common/library/utils/ToastUtils;

    invoke-direct {v1}, Lcom/miui/video/common/library/utils/ToastUtils;-><init>()V

    sput-object v1, Lcom/miui/video/common/library/utils/ToastUtils;->mInstance:Lcom/miui/video/common/library/utils/ToastUtils;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/common/library/utils/ToastUtils;->mInstance:Lcom/miui/video/common/library/utils/ToastUtils;

    return-object v0
.end method

.method private initToastView(Landroid/content/Context;I)V
    .locals 2

    iput p2, p0, Lcom/miui/video/common/library/utils/ToastUtils;->mType:I

    iget p2, p0, Lcom/miui/video/common/library/utils/ToastUtils;->mType:I

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/miui/video/common/library/R$layout;->ui_toast:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/video/common/library/utils/ToastUtils;->vLayout:Landroid/view/View;

    iget-object p2, p0, Lcom/miui/video/common/library/utils/ToastUtils;->vLayout:Landroid/view/View;

    sget v0, Lcom/miui/video/common/library/R$id;->v_toast:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/video/common/library/utils/ToastUtils;->vTxtTitle:Landroid/widget/TextView;

    :goto_0
    new-instance p2, Landroid/widget/Toast;

    invoke-direct {p2, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/video/common/library/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    iget-object p1, p0, Lcom/miui/video/common/library/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    iget-object p2, p0, Lcom/miui/video/common/library/utils/ToastUtils;->vLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/miui/video/common/library/utils/ToastUtils;->mShowTime:J

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 6

    sget-object v0, Lcom/miui/video/common/library/utils/ToastUtils;->mInstance:Lcom/miui/video/common/library/utils/ToastUtils;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/video/common/library/utils/ToastUtils;->mInstance:Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object v0, v0, Lcom/miui/video/common/library/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/video/common/library/utils/ToastUtils;->mInstance:Lcom/miui/video/common/library/utils/ToastUtils;

    iget-wide v0, v0, Lcom/miui/video/common/library/utils/ToastUtils;->mShowTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/common/library/utils/ToastUtils;->mInstance:Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object v0, v0, Lcom/miui/video/common/library/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/video/common/library/utils/ToastUtils;->mInstance:Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object v0, v0, Lcom/miui/video/common/library/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/miui/video/common/library/utils/ToastUtils;->mInstance:Lcom/miui/video/common/library/utils/ToastUtils;

    iget-wide v4, v4, Lcom/miui/video/common/library/utils/ToastUtils;->mShowTime:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/miui/video/common/library/utils/ToastUtils;->mInstance:Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object v0, v0, Lcom/miui/video/common/library/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    sget-object v0, Lcom/miui/video/common/library/utils/ToastUtils;->mInstance:Lcom/miui/video/common/library/utils/ToastUtils;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/video/common/library/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    :cond_1
    return-void
.end method

.method public keepShowTime()V
    .locals 3

    sget-object v0, Lcom/miui/video/common/library/utils/ToastUtils;->mInstance:Lcom/miui/video/common/library/utils/ToastUtils;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/common/library/utils/ToastUtils;->mInstance:Lcom/miui/video/common/library/utils/ToastUtils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/video/common/library/utils/ToastUtils;->mShowTime:J

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;
    .locals 7

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/video/common/library/R$dimen;->dp_80:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/16 v3, 0xbb8

    const/16 v4, 0x50

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;IIII)Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    return-object p1
.end method

.method public showToast(II)Lcom/miui/video/common/library/utils/ToastUtils;
    .locals 7

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbb8

    const/16 v4, 0x50

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;IIII)Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    return-object p1
.end method

.method public showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;
    .locals 8

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/common/library/R$dimen;->dp_80:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/16 v4, 0xbb8

    const/16 v5, 0x50

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;IIII)Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    return-object p1
.end method

.method public showToast(Ljava/lang/String;I)Lcom/miui/video/common/library/utils/ToastUtils;
    .locals 6

    const/16 v2, 0xbb8

    const/16 v3, 0x50

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;IIII)Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    return-object p1
.end method

.method public showToast(Ljava/lang/String;IIII)Lcom/miui/video/common/library/utils/ToastUtils;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/library/utils/ToastUtils;->dismiss()V

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/miui/video/common/library/R$layout;->ui_toast:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/ToastUtils;->vLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/common/library/utils/ToastUtils;->vLayout:Landroid/view/View;

    sget v1, Lcom/miui/video/common/library/R$id;->v_toast:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/ToastUtils;->vTxtTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->initToastView(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/video/common/library/utils/ToastUtils;->vTxtTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/common/library/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1, p3, p4, p5}, Landroid/widget/Toast;->setGravity(III)V

    iget-object p1, p0, Lcom/miui/video/common/library/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    iget-object p1, p0, Lcom/miui/video/common/library/utils/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    sget-object p1, Lcom/miui/video/common/library/utils/ToastUtils;->mInstance:Lcom/miui/video/common/library/utils/ToastUtils;

    return-object p1
.end method
