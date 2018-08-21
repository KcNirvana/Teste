.class public Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.super Landroid/widget/LinearLayout;
.source "BaseView.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/interfaces/BaseCard;
.implements Lcom/miui/home/launcher/assistant/interfaces/BaseStatis;


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mBasedapter:Landroid/widget/BaseAdapter;

.field protected mCSettingV:Landroid/widget/ImageView;

.field protected mContext:Landroid/content/Context;

.field protected mDisableMenu:Z

.field protected mHeader:Landroid/view/View;

.field protected mInit:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field protected mPos:I

.field private mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

.field protected mTitleEmptyTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "BaseView"

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mInit:Z

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mDisableMenu:Z

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "BaseView"

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mInit:Z

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mDisableMenu:Z

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "BaseView"

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mInit:Z

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mDisableMenu:Z

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/view/BaseView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/view/BaseView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->createPopupWindow()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/view/BaseView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/ui/view/BaseView;)Lcom/miui/home/launcher/assistant/module/CardSource;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    return-object v0
.end method

.method private createPopupWindow()V
    .locals 9

    const v8, 0x1b090184

    const v7, 0x1b0900d6

    const/4 v6, -0x2

    const v5, 0x3e99999a    # 0.3f

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x1b04005b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "key_shortcut"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "key_miot_device"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1b020212

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x1b0b007e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mDisableMenu:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v6, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b020144

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initCardMenu()V
    .locals 4

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initCardMenu"

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "key_book_assistant"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "key_noteboard"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "key_recommend"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mCSettingV:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initCardMenu start"

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x1b090186

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mCSettingV:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mCSettingV:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0c014f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0c0150

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_2

    new-instance v2, Lcom/miui/home/launcher/assistant/ui/view/BaseView$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/BaseView;II)V

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mOnClickListener:Landroid/view/View$OnClickListener;

    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mCSettingV:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public bindAdapter(Landroid/widget/BaseAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mBasedapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method protected findView(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Landroid/view/View;",
            ">(I)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/miui/home/launcher/assistant/util/Util;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected findView(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TE;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/miui/home/launcher/assistant/util/Util;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemQuantity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemSequence()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getItemSource()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCardShrink()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemAuthorized()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isItemContentEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadCardData(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadCardData refresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/CardSource;->getReLoad()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mInit:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/BaseView;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->runInBackgroud(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1b090183

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mHeader:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    const v0, 0x1b090187

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mTitleEmptyTip:Landroid/widget/TextView;

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mHeader:Landroid/view/View;

    const v1, 0x1b0202ed

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public onLeaveMinus()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onMenuClick()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/Util;->gotoCardSettingActivity(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public postToMainThread(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/BaseView$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/BaseView$3;-><init>(Lcom/miui/home/launcher/assistant/ui/view/BaseView;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryItemData()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public refreshView(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public runInBackgroud(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateCard(Lcom/miui/home/launcher/assistant/module/CardSource;I)V
    .locals 4

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCard source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tposition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/CardSource;->getCardId()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/CardSource;->getCardId()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mSource:Lcom/miui/home/launcher/assistant/module/CardSource;

    iput p2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mPos:I

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->initCardMenu()V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->loadCardData(Z)V

    return-void
.end method
