.class public Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "BookAssistantCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TYPE_FUTURE_TRIP:I = 0x3

.field public static final TYPE_RECENT_TRIP:I = 0x1

.field public static final TYPE_TODAY_BOOK:I = 0x2

.field private static final VIEW_TYPE:Ljava/lang/String; = "BookAssistantCardView"

.field public static mCurrShowType:I


# instance fields
.field private mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;

.field private mBodyView:Landroid/view/View;

.field private mBtnAll:Landroid/widget/TextView;

.field private mCompareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/BaseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEmptyShow:Landroid/widget/LinearLayout;

.field private mIUpdateViewLisener:Lcom/miui/home/launcher/assistant/module/receiver/BookAssistantReceiver$IUpdateViewLisener;

.field private mLastShowType:I

.field private mListView:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mIUpdateViewLisener:Lcom/miui/home/launcher/assistant/module/receiver/BookAssistantReceiver$IUpdateViewLisener;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/receiver/BookAssistantReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/BookAssistantReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mIUpdateViewLisener:Lcom/miui/home/launcher/assistant/module/receiver/BookAssistantReceiver$IUpdateViewLisener;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/receiver/BookAssistantReceiver;->setUpdateListener(Lcom/miui/home/launcher/assistant/module/receiver/BookAssistantReceiver$IUpdateViewLisener;)V

    return-void
.end method

.method private isSameValue(Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/BaseEvent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/BaseEvent;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/calendar/event/schema/BaseEvent;

    iget-wide v4, v1, Lcom/miui/calendar/event/schema/BaseEvent;->id:J

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/calendar/event/schema/BaseEvent;

    iget-wide v6, v1, Lcom/miui/calendar/event/schema/BaseEvent;->id:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateEmptyUI()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "BookAssistantCardView"

    const-string/jumbo v1, "updateEmptyUI"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mTitleEmptyTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mListView:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mBodyView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->expandView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateFoldUI()V
    .locals 2

    const-string/jumbo v0, "BookAssistantCardView"

    const-string/jumbo v1, "updateFoldUI"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mHeader:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mTitleEmptyTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mBodyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateTextUI(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/BaseEvent;",
            ">;)V"
        }
    .end annotation

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string/jumbo v0, "BookAssistantCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTextUI list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mTitleEmptyTip:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mBodyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mListView:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mListView:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->setAdapter(Landroid/widget/Adapter;)V

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCompareList:Ljava/util/List;

    sget v0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCurrShowType:I

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mLastShowType:I

    return-void

    :cond_0
    sget v0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCurrShowType:I

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mLastShowType:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCompareList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCompareList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->isSameValue(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mListView:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->bindView()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->setData(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public getItemQuantity()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCompareList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCompareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.personalassistant.BOOK_ALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "card_button_click_book"

    const-string/jumbo v2, "18"

    const-string/jumbo v3, "BookAssistantCardView"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mBtnAll:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->updateEmptyUI()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b09013a -> :sswitch_0
        0x1b090183 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 5

    const v4, 0x1b0201a5

    const v3, 0x1b090184

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onFinishInflate()V

    const v0, 0x1b0900d6

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mTitleEmptyTip:Landroid/widget/TextView;

    const v1, 0x1b0b0085

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x1b090139

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mBodyView:Landroid/view/View;

    const v0, 0x1b090152

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    const v0, 0x1b090154

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x1b09013a

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mBtnAll:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mBtnAll:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b090112

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mListView:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mBtnAll:Landroid/widget/TextView;

    const v1, 0x1b0200e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x1b0202c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onLeaveMinus()V
    .locals 1

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onLeaveMinus()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCompareList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCompareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->updateFoldUI()V

    :cond_1
    return-void
.end method

.method public queryItemData()Ljava/lang/Object;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "BookAssistantCardView"

    const-string/jumbo v4, "queryItemData"

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;->queryItem(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/calendar/api/CalendarAPI;->loadNextTripEvent(Landroid/content/Context;)Lcom/miui/calendar/event/schema/BaseEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    sput v3, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCurrShowType:I

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/calendar/event/schema/BaseEvent;

    iget-wide v4, v1, Lcom/miui/calendar/event/schema/BaseEvent;->createTimeMillis:J

    invoke-static {v4, v5}, Lcom/miui/calendar/util/TimeUtils;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v4, v1, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    invoke-static {v4, v5}, Lcom/miui/calendar/util/TimeUtils;->isToday(J)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, v1, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    sput v9, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCurrShowType:I

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    invoke-static {v4, v5, v6, v7}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getHoursBetween(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x18

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    sput v9, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCurrShowType:I

    goto :goto_0

    :cond_3
    sput v8, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCurrShowType:I

    goto :goto_0

    :cond_4
    sput v8, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCurrShowType:I

    goto :goto_0
.end method

.method public refreshView(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "BookAssistantCardView"

    const-string/jumbo v2, "refreshView"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->updateTextUI(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iput-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCompareList:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->updateFoldUI()V

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->mCompareList:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BookAssistantCardView;->updateFoldUI()V

    goto :goto_0
.end method
