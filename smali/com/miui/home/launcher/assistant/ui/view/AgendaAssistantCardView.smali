.class public Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "AgendaAssistantCardView.java"


# static fields
.field private static final VIEW_TYPE:Ljava/lang/String; = "AgendaAssistantCardView"

.field public static isHasAgenda:Z


# instance fields
.field private final iconArr:[I

.field private isUpdateList:Z

.field private mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;

.field private mAddTV:Landroid/widget/TextView;

.field private mBodyView:Landroid/view/View;

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

.field private mEmptyContent:Landroid/widget/TextView;

.field private mEmptyShow:Landroid/widget/LinearLayout;

.field private mIUpdateViewLisener:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateViewLisener;

.field private mListView:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mMoreTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->iconArr:[I

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mIUpdateViewLisener:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateViewLisener;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mIUpdateViewLisener:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateViewLisener;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->setUpdateListener(Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateViewLisener;)V

    return-void

    :array_0
    .array-data 4
        0x1b020274
        0x1b020275
        0x1b020276
        0x1b020277
        0x1b020278
        0x1b020279
        0x1b02027a
        0x1b02027b
        0x1b02027c
        0x1b02027d
    .end array-data
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->isUpdateList:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->updateEmptyUI()V

    return-void
.end method

.method private getDateIcon()[I
    .locals 8

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-array v2, v5, [I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_1

    const v4, 0x1b020274

    aput v4, v2, v7

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->iconArr:[I

    aget v4, v4, v1

    aput v4, v2, v6

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-ne v3, v5, :cond_0

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->iconArr:[I

    div-int/lit8 v5, v1, 0xa

    aget v4, v4, v5

    aput v4, v2, v7

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->iconArr:[I

    rem-int/lit8 v5, v1, 0xa

    aget v4, v4, v5

    aput v4, v2, v6

    goto :goto_0
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

.method private setAgendaLogo()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->getDateIcon()[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x1b090188

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v1, 0x1b090189

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    return-void
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
    const-string/jumbo v0, "AgendaAssistantCardView"

    const-string/jumbo v1, "updateEmptyUI"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mTitleEmptyTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mCSettingV:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mListView:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mBodyView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->expandView(Landroid/view/View;)V

    sget-boolean v0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->isHasAgenda:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mEmptyContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mEmptyContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateFoldUI()V
    .locals 3

    const/16 v2, 0x8

    const-string/jumbo v0, "AgendaAssistantCardView"

    const-string/jumbo v1, "updateFoldUI"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mHeader:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mTitleEmptyTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mCSettingV:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mBodyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

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

    const-string/jumbo v0, "AgendaAssistantCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTextUI list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mTitleEmptyTip:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mCSettingV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mBodyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mListView:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mListView:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->setAdapter(Landroid/widget/Adapter;)V

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mCompareList:Ljava/util/List;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mCompareList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mCompareList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->isSameValue(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->isUpdateList:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mListView:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->bindView()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->setData(Ljava/util/List;)V

    iput-boolean v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->isUpdateList:Z

    goto :goto_0
.end method


# virtual methods
.method public getItemQuantity()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mCompareList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mCompareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onFinishInflate()V

    const v0, 0x1b090113

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mMoreTV:Landroid/widget/TextView;

    const v0, 0x1b090114

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mAddTV:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mMoreTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mAddTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mTitleEmptyTip:Landroid/widget/TextView;

    const v1, 0x1b0b000f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x1b090111

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mBodyView:Landroid/view/View;

    const v0, 0x1b090152

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    const v0, 0x1b090154

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mEmptyContent:Landroid/widget/TextView;

    const v0, 0x1b090112

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mListView:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;

    const v0, 0x1b0900d6

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mMoreTV:Landroid/widget/TextView;

    const v1, 0x1b0202eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mAddTV:Landroid/widget/TextView;

    const v1, 0x1b0202ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v0, 0x1b09006c

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b0202c2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public onLeaveMinus()V
    .locals 1

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onLeaveMinus()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mCompareList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mCompareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->updateFoldUI()V

    :cond_1
    return-void
.end method

.method public queryItemData()Ljava/lang/Object;
    .locals 3

    const-string/jumbo v0, "AgendaAssistantCardView"

    const-string/jumbo v1, "queryItemData"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->queryItem(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public refreshView(Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "AgendaAssistantCardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshView info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->setAgendaLogo()V

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->updateTextUI(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iput-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mCompareList:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->updateFoldUI()V

    goto :goto_0

    :cond_1
    iput-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mCompareList:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->updateFoldUI()V

    goto :goto_0
.end method
