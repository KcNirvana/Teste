.class public Lcom/miui/personalassistant/ui/widget/LoadingProgressView;
.super Landroid/widget/LinearLayout;
.source "LoadingProgressView.java"

# interfaces
.implements Lcom/miui/personalassistant/loader/ProgressListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadingProgressView"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mErrorResId:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReloadable:Lcom/miui/personalassistant/loader/Reloadable;

.field private mText:Ljava/lang/CharSequence;

.field private mTextResId:I

.field private mTextView:Landroid/widget/TextView;

.field private mUserNoticeAgreeListener:Landroid/content/DialogInterface$OnClickListener;

.field private mUserNoticeCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mUserNoticeDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView$2;-><init>(Lcom/miui/personalassistant/ui/widget/LoadingProgressView;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mUserNoticeAgreeListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView$3;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView$3;-><init>(Lcom/miui/personalassistant/ui/widget/LoadingProgressView;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mUserNoticeCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1b0400be

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x1b0901e7

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x1b0902e0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextView:Landroid/widget/TextView;

    const v0, 0x1b0902e1

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mButton:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/widget/LoadingProgressView;)Lcom/miui/personalassistant/loader/Reloadable;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mReloadable:Lcom/miui/personalassistant/loader/Reloadable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/personalassistant/ui/widget/LoadingProgressView;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mUserNoticeDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private hideView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1b05000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1b05000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateStyle(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v0, 0x1b0201f7

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public onError(ZLcom/miui/personalassistant/request/core/BaseResult$State;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->onError(ZLcom/miui/personalassistant/request/core/BaseResult$State;Ljava/lang/String;)V

    return-void
.end method

.method public onError(ZLcom/miui/personalassistant/request/core/BaseResult$State;Ljava/lang/String;)V
    .locals 8

    const v7, 0x1b0201f2

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mErrorResId:I

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mErrorResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->updateStyle(Z)V

    if-eqz p1, :cond_3

    invoke-direct {p0, p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->hideView(Landroid/view/View;)V

    sget-object v1, Lcom/miui/personalassistant/request/core/BaseResult$State;->NETWORK_ACCESS_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    if-ne p2, v1, :cond_2

    :goto_1
    return-void

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, p3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/personalassistant/request/core/BaseResult$State;->getDescription()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->showView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v1, Lcom/miui/personalassistant/request/core/BaseResult$State;->NETWORK_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    if-ne p2, v1, :cond_5

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b020271

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mButton:Landroid/widget/Button;

    const v2, 0x1b0b00a0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mButton:Landroid/widget/Button;

    new-instance v2, Lcom/miui/personalassistant/ui/widget/LoadingProgressView$1;

    invoke-direct {v2, p0, p2}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView$1;-><init>(Lcom/miui/personalassistant/ui/widget/LoadingProgressView;Lcom/miui/personalassistant/request/core/BaseResult$State;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/miui/personalassistant/request/core/BaseResult$State;->NETWORK_ACCESS_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    if-ne p2, v1, :cond_6

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/miui/personalassistant/request/core/BaseResult$State;->DATA_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    if-ne p2, v1, :cond_7

    const-string/jumbo v1, "success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b00bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mButton:Landroid/widget/Button;

    const v2, 0x1b0b042e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mReloadable:Lcom/miui/personalassistant/loader/Reloadable;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method public onInit(ZZLcom/miui/personalassistant/loader/Reloadable;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iput-object p3, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mReloadable:Lcom/miui/personalassistant/loader/Reloadable;

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->updateStyle(Z)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, v2}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStartLoading(Z)V
    .locals 3

    const/16 v2, 0x8

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->updateStyle(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0, p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->showView(Landroid/view/View;)V

    return-void
.end method

.method public onStopLoading(Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->updateStyle(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->hideView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->showView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextResId:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0201f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mUserNoticeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mUserNoticeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mUserNoticeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setEmptyText(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mTextResId:I

    return-void
.end method

.method public setErrorText(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mErrorResId:I

    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 4

    const/4 v2, -0x2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_1
    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1
.end method

.method public setProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
