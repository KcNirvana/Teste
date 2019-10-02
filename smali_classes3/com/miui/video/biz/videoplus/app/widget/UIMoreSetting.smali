.class public Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIMoreSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FEEDBACK:Ljava/lang/String; = "mv://Feedback"

.field private static final LAUNCH_FROM:Ljava/lang/String; = "launch"

.field private static final LAUNCH_FROM_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final SETTING:Ljava/lang/String; = "mv://Setting"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFrom:Ljava/lang/String;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private vContainer:Landroid/view/View;

.field private vFeedback:Landroid/widget/LinearLayout;

.field private vFullback:Landroid/view/View;

.field private vSetting:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->mContext:Landroid/content/Context;

    return-void
.end method

.method private closeWindow()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_more_setting:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_setting_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->vContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->vContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_setting_set:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->vSetting:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_setting_feedback:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->vFeedback:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_setting_fullback:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->vFullback:Landroid/view/View;

    return-void
.end method

.method public initViewsEvent()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->vSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->vFeedback:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->vFullback:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->vFullback:Landroid/view/View;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->closeWindow()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->vSetting:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mv://Setting"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->closeWindow()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->vFeedback:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mv://Feedback"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->closeWindow()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->mFrom:Ljava/lang/String;

    return-void
.end method

.method public setPopuWindow(Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->mPopupWindow:Landroid/widget/PopupWindow;

    return-void
.end method
