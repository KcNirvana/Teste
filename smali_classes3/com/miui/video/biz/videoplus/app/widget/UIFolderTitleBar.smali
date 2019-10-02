.class public Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIFolderTitleBar.java"


# instance fields
.field private vBack:Landroid/widget/TextView;

.field private vPopupWindow:Landroid/widget/PopupWindow;

.field private vRightImg:Landroid/widget/ImageView;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_title_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_back:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->vBack:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_right_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->vRightImg:Landroid/widget/ImageView;

    return-void
.end method

.method public initViewsEvent()V
    .locals 0

    return-void
.end method

.method public initViewsValue()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/framework/base/ui/UIBase;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->setGuidShow(Z)V

    return-void
.end method

.method public setBackTextAndListener(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->vBack:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->vBack:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setGuidShow(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/app/utils/PopupWindowUtils;->showVideoFolderSoreGuideWindow(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->vPopupWindow:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object p1

    const-string v0, "plus_first_access_folder"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->vPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->vPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->vPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRightImageSrc(I)Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->vRightImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setRightImageSrc(Landroid/graphics/Bitmap;)Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->vRightImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public setRightImgListener(ILandroid/view/View$OnClickListener;)Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->vRightImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->vRightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setTitleText(I)Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTitleTextAndListener(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIFolderTitleBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
