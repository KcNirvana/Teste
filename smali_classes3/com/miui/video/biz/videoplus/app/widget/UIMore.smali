.class public Lcom/miui/video/biz/videoplus/app/widget/UIMore;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIMore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LAUNCH_FROM:Ljava/lang/String; = "launch"

.field private static final LAUNCH_FROM_SHORTCUT:Ljava/lang/String; = "shortcut"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFrom:Ljava/lang/String;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private vClose:Landroid/widget/ImageView;

.field private vContainer:Landroid/view/View;

.field private vFeedback:Landroid/widget/TextView;

.field private vFullback:Landroid/view/View;

.field private vSendAppToLauncher:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIMore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIMore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->mContext:Landroid/content/Context;

    return-void
.end method

.method private closeWindow()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 3

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_more:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->vContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->vContainer:Landroid/view/View;

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_close:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->vClose:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_send_app_to_launcher:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->vSendAppToLauncher:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_feedback:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->vFeedback:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_fullback:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->vFullback:Landroid/view/View;

    return-void
.end method

.method public initViewsEvent()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->vClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->vSendAppToLauncher:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->vFeedback:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->vFullback:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->vClose:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->vFullback:Landroid/view/View;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->vSendAppToLauncher:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->vFeedback:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->mFrom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordFeedback(Ljava/lang/String;)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;

    invoke-direct {p1}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/BearerActivity;->startActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->closeWindow()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->closeWindow()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->mFrom:Ljava/lang/String;

    return-void
.end method

.method public setPopuWindow(Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIMore;->mPopupWindow:Landroid/widget/PopupWindow;

    return-void
.end method
