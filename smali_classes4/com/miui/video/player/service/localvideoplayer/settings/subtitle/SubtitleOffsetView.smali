.class public Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;
.super Lcom/miui/video/player/service/setting/views/BaseFrameLayout;
.source "SubtitleOffsetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final OFFSET_ADD_1S:I = 0x3e8

.field private static final OFFSET_ADD_DOT5:I = 0x1f4

.field private static final OFFSET_RESET:I = 0x0

.field private static final OFFSET_SUB_1S:I = -0x3e8

.field private static final OFFSET_SUB_DOT5S:I = -0x1f4

.field private static final OFFSET_SUB_MAX:I = -0x1388


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    sget v0, Lcom/miui/video/player/service/R$id;->v_subtitle_offset_sub_1s:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/miui/video/player/service/R$id;->v_subtitle_offset_sub_dot5s:I

    invoke-virtual {p0, p1, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/miui/video/player/service/R$id;->v_subtitle_offset_add_dot5s:I

    invoke-virtual {p0, p1, v2}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/miui/video/player/service/R$id;->v_subtitle_offset_add_1s:I

    invoke-virtual {p0, p1, v3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/miui/video/player/service/R$id;->v_subtitle_offset_reset:I

    invoke-virtual {p0, p1, v4}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setOffsetTime(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->setSubtitleOffset(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->getSubtitleOffset()I

    move-result v0

    add-int/2addr v0, p1

    const/16 p1, -0x1388

    if-gt v0, p1, :cond_1

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$string;->lv_subtitle_preoffset_max:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->setSubtitleOffset(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->setSubtitleOffset(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/miui/video/player/service/R$id;->v_subtitle_offset_sub_1s:I

    if-ne p1, v0, :cond_0

    const/16 p1, -0x3e8

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->setOffsetTime(I)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/miui/video/player/service/R$id;->v_subtitle_offset_sub_dot5s:I

    if-ne p1, v0, :cond_1

    const/16 p1, -0x1f4

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->setOffsetTime(I)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/miui/video/player/service/R$id;->v_subtitle_offset_add_dot5s:I

    if-ne p1, v0, :cond_2

    const/16 p1, 0x1f4

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->setOffsetTime(I)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/miui/video/player/service/R$id;->v_subtitle_offset_add_1s:I

    if-ne p1, v0, :cond_3

    const/16 p1, 0x3e8

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->setOffsetTime(I)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/miui/video/player/service/R$id;->v_subtitle_offset_reset:I

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->setOffsetTime(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->lp_subtitle_offset_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->addView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->initView(Landroid/view/View;)V

    return-void
.end method

.method public refresh()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;->refresh()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->getSelectedSubtitleTrack()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v1}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->getAllSubtitleTracks()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleUtil;->isExtraSubtitle(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleOffsetView;->refresh()V

    return-void
.end method
