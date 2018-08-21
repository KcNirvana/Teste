.class public Lcom/miui/home/launcher/assistant/ui/view/AssistListView;
.super Landroid/widget/ListView;
.source "AssistListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/ui/view/AssistListView$OnScrollDirectionListener;,
        Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;,
        Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;
    }
.end annotation


# instance fields
.field private SPEED:F

.field private TAG:Ljava/lang/String;

.field private isLastScrollUp:Z

.field private mAssistListScrollListener:Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;

.field private mCardCom:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/home/launcher/assistant/module/CardSource;",
            ">;"
        }
    .end annotation
.end field

.field public mCardViewAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mIsBarHide:Z

.field private mIsTouch:Z

.field private mLastTop:I

.field private mLastVisibleItem:I

.field private mListLock:Ljava/lang/Object;

.field private mMinusCardIdCount:I

.field private mScrollChangeListenerOutside:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollDirectionListener:Lcom/miui/home/launcher/assistant/ui/view/AssistListView$OnScrollDirectionListener;

.field private mSortPrefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateTask:Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "AssistListView"

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->TAG:Ljava/lang/String;

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->SPEED:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mListLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mIsTouch:Z

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mIsBarHide:Z

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mAssistListScrollListener:Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mCardCom:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "AssistListView"

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->TAG:Ljava/lang/String;

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->SPEED:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mListLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mIsTouch:Z

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mIsBarHide:Z

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mAssistListScrollListener:Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mCardCom:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "AssistListView"

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->TAG:Ljava/lang/String;

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->SPEED:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mListLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mIsTouch:Z

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mIsBarHide:Z

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mAssistListScrollListener:Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mCardCom:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mSortPrefList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mIsBarHide:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mIsBarHide:Z

    return p1
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mSortPrefList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mListLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mMinusCardIdCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->updatePrefList(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mCardCom:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mScrollChangeListenerOutside:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;Landroid/widget/AbsListView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->updateScrollDirection(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method private updatePrefList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/module/CardSource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSortPrefList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mSortPrefList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "key_upgrade"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "key_welcome"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mMinusCardIdCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mMinusCardIdCount:I

    :cond_1
    const-string/jumbo v1, "key_recommend"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mMinusCardIdCount:I

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "minusCardIdCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mMinusCardIdCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", recomCardPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mSortPrefList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mSortPrefList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_2
    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mSortPrefList:Ljava/util/ArrayList;

    const-string/jumbo v2, "key_recommend"

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private updateScrollDirection(Landroid/widget/AbsListView;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    move v0, v2

    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mLastVisibleItem:I

    if-le p2, v3, :cond_2

    invoke-direct {p0, v4}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->updateScrollState(Z)V

    :cond_0
    :goto_1
    iput p2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mLastVisibleItem:I

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mLastTop:I

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mLastVisibleItem:I

    if-ge p2, v3, :cond_3

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->updateScrollState(Z)V

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mLastTop:I

    if-ge v0, v3, :cond_4

    invoke-direct {p0, v4}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->updateScrollState(Z)V

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mLastTop:I

    if-le v0, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->updateScrollState(Z)V

    goto :goto_1
.end method

.method private updateScrollState(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mScrollDirectionListener:Lcom/miui/home/launcher/assistant/ui/view/AssistListView$OnScrollDirectionListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->isLastScrollUp:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->isLastScrollUp:Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mScrollDirectionListener:Lcom/miui/home/launcher/assistant/ui/view/AssistListView$OnScrollDirectionListener;

    invoke-interface {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$OnScrollDirectionListener;->OnScrollUp()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->isLastScrollUp:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->isLastScrollUp:Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mScrollDirectionListener:Lcom/miui/home/launcher/assistant/ui/view/AssistListView$OnScrollDirectionListener;

    invoke-interface {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$OnScrollDirectionListener;->OnScrollDown()V

    goto :goto_0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/assistant/module/CardManager;->getCardSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/CardManager;->getCardSource(I)Lcom/miui/home/launcher/assistant/module/CardSource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->getCardStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onFinishInflate()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/ListView;->onFinishInflate()V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->setClickable(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mAssistListScrollListener:Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public onLeaveMinus()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onLeaveMinus()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->getChildCount()I

    move-result v0

    if-gt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mIsTouch:Z

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mIsTouch:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public playAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p2, :cond_3

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public scrollList(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mIsTouch:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x3e8

    const/16 v1, 0xc8

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->SPEED:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public setCardViewDataAdapter(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mCardViewAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setOnListScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mScrollChangeListenerOutside:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setScrollDirectionListener(Lcom/miui/home/launcher/assistant/ui/view/AssistListView$OnScrollDirectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mScrollDirectionListener:Lcom/miui/home/launcher/assistant/ui/view/AssistListView$OnScrollDirectionListener;

    return-void
.end method

.method public updateCardSource(Z)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mCardViewAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mUpdateTask:Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mUpdateTask:Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->cancel(Z)Z

    :cond_1
    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mUpdateTask:Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mUpdateTask:Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;

    new-array v1, v2, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public updateSortPreList()V
    .locals 2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mListLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/Util;->getCardOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mSortPrefList:Ljava/util/ArrayList;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSortPreList(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mListLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/miui/home/launcher/assistant/util/Util;->getCardOrderFromStr(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mSortPrefList:Ljava/util/ArrayList;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateStatusBar()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/miui/home/launcher/assistant/util/StatusBarUtil;->hideStatusBar(Landroid/content/Context;Z)V

    iput-boolean v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mIsBarHide:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->mIsBarHide:Z

    goto :goto_0
.end method
