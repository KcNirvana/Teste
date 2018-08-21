.class public Lcom/miui/home/launcher/assistant/express/ExpressCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "ExpressCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CARD_PACKAGE_NAME:Ljava/lang/String; = "com.miui.yellowpage"

.field private static final EXPRESS_HISTORY:Ljava/lang/String; = "yellowpage://inquiry_history"

.field public static EXPRESS_NUMBER_TXT:Ljava/lang/String; = null

.field public static EXPRESS_ORIGIN_PREV:Ljava/lang/String; = null

.field private static final EXPRESS_QUERY:Ljava/lang/String; = "yellowpage://express_inquiry?from=pa"

.field private static final MAX_EXPRESS_DISPLAY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ExpressCardView"

.field public static final VIEW_TYPE:Ljava/lang/String; = "expressView"


# instance fields
.field private mAuth:Landroid/view/ViewStub;

.field private mAuthView:Landroid/view/View;

.field private mContentTotalView:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/widget/LinearLayout;

.field private mEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/ExpressEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mExpressItem:Lcom/miui/home/launcher/assistant/express/ExpressItem;

.field private mIsAuth:Z

.field private mListView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mExpressItem:Lcom/miui/home/launcher/assistant/express/ExpressItem;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x1b0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->sTitleLen:I

    const v0, 0x1b0b0167

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->EXPRESS_NUMBER_TXT:Ljava/lang/String;

    const v0, 0x1b0b017e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->EXPRESS_ORIGIN_PREV:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/express/ExpressCardView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/express/ExpressCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->gotoAuthorization()V

    return-void
.end method

.method private filterExpressList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/ExpressEntry;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/ExpressEntry;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-static {v0}, Lcom/miui/personalassistant/express/bean/ExpressState;->valueOf(Lcom/miui/personalassistant/express/bean/ExpressEntry;)Lcom/miui/personalassistant/express/bean/ExpressState;

    move-result-object v3

    sget-object v6, Lcom/miui/personalassistant/express/bean/ExpressState;->RECEIPTED:Lcom/miui/personalassistant/express/bean/ExpressState;

    if-eq v3, v6, :cond_1

    sget-object v6, Lcom/miui/personalassistant/express/bean/ExpressState;->UNKNOWN:Lcom/miui/personalassistant/express/bean/ExpressState;

    if-ne v3, v6, :cond_3

    :cond_1
    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getLatestTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_2

    :cond_4
    new-instance v6, Lcom/miui/home/launcher/assistant/express/ExpressCardView$2;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView$2;-><init>(Lcom/miui/home/launcher/assistant/express/ExpressCardView;)V

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private getExpressTip()Landroid/text/SpannableString;
    .locals 9

    const v8, 0x1b0b012f

    const/16 v7, 0x21

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContext:Landroid/content/Context;

    const v5, 0x1b0b012e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Landroid/text/SpannableString;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v4, v5

    new-instance v4, Landroid/text/style/URLSpan;

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/util/Util;->getGuidePrivacy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v2, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v5, "#80000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v4, v2, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private goExpressAll()V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "card_button_click_express"

    const-string/jumbo v2, "2"

    const-string/jumbo v3, "expressView"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b00f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "yellowpage://inquiry_history"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/Util;->startActivityByUriClearTask(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private gotoAuthorization()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/miui/home/launcher/assistant/express/ExpressUtil;->setAuth(Landroid/content/Context;Z)Z

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "key_express"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/Util;->gotoCardSettingActivity(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->loadCardData(Z)V

    return-void
.end method

.method private hideHeader()V
    .locals 2

    const v1, 0x1b090183

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initButtons()V
    .locals 3

    const v2, 0x1b090155

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x1b09016b

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v2, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v2, :cond_0

    const v2, 0x1b0202eb

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const v2, 0x1b0202ec

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method private initHeader()V
    .locals 4

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mHeader:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x1b090184

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-boolean v2, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v2, :cond_0

    const v2, 0x1b0202c6

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const v2, 0x1b0900d6

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1b0b0088

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    const v2, 0x1b0202c5

    goto :goto_0
.end method

.method private showAuthorizationView()V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v4, "ExpressCardView"

    const-string/jumbo v5, "showAuthorizationView"

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContentTotalView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContentView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->hideHeader()V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mAuthView:Landroid/view/View;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mAuth:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mAuthView:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mAuthView:Landroid/view/View;

    const v5, 0x1b090157

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v4, 0x1b0201fe

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mAuthView:Landroid/view/View;

    const v5, 0x1b090158

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x1b0b0088

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mAuthView:Landroid/view/View;

    const v5, 0x1b090159

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->getExpressTip()Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mAuthView:Landroid/view/View;

    const v5, 0x1b09015a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x1b0b050a

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v4, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mAuthView:Landroid/view/View;

    const v5, 0x1b090018

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x1b020316

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v4, 0x1b0200e2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mAuthView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showListView(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/ExpressEntry;",
            ">;)V"
        }
    .end annotation

    const/16 v8, 0x8

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->filterExpressList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mEntryList:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mAuthView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mAuthView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->updateFoldUI()V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v4, "ExpressCardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showListView entryList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mHeader:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mHeader:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mTitleEmptyTip:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mCSettingV:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContentTotalView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_4

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;

    invoke-virtual {v3, v7}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->setVisibility(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v2, v4, v0}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->updateData(IILcom/miui/personalassistant/express/bean/ExpressEntry;)V

    move v1, v2

    new-instance v4, Lcom/miui/home/launcher/assistant/express/ExpressCardView$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/miui/home/launcher/assistant/express/ExpressCardView$1;-><init>(Lcom/miui/home/launcher/assistant/express/ExpressCardView;Lcom/miui/personalassistant/express/bean/ExpressEntry;I)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
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
    const-string/jumbo v0, "ExpressCardView"

    const-string/jumbo v1, "updateEmptyUI"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mTitleEmptyTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mCSettingV:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContentTotalView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->expandView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateFoldUI()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string/jumbo v0, "ExpressCardView"

    const-string/jumbo v1, "updateFoldUI"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mHeader:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mTitleEmptyTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mCSettingV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContentTotalView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getItemQuantity()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mEntryList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public isItemAuthorized()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mIsAuth:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->goExpressAll()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "card_button_click_express"

    const-string/jumbo v3, "2"

    const-string/jumbo v4, "expressView"

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1b0b00f3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "yellowpage://express_inquiry?from=pa"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/util/Util;->startActivityByUriClearTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->isShowDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/home/launcher/assistant/express/ExpressCardView$3;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView$3;-><init>(Lcom/miui/home/launcher/assistant/express/ExpressCardView;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$OnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->show()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->gotoAuthorization()V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->updateEmptyUI()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b090155 -> :sswitch_0
        0x1b09015a -> :sswitch_2
        0x1b09016b -> :sswitch_1
        0x1b090183 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onFinishInflate()V

    const v0, 0x1b090166

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContentTotalView:Landroid/view/View;

    const v0, 0x1b090168

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContentView:Landroid/view/View;

    const v0, 0x1b090167

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mAuth:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mTitleEmptyTip:Landroid/widget/TextView;

    const v1, 0x1b0b0086

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContentView:Landroid/view/View;

    const v1, 0x1b090169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mListView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContentView:Landroid/view/View;

    const v1, 0x1b09016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->initHeader()V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->initButtons()V

    return-void
.end method

.method public onLeaveMinus()V
    .locals 1

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onLeaveMinus()V

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mIsAuth:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->getItemQuantity()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->updateFoldUI()V

    :cond_0
    return-void
.end method

.method protected onMenuClick()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "key_express"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/Util;->gotoCardSettingActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic queryItemData()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->queryItemData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryItemData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/ExpressEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/express/ExpressUtil;->isAuth(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mIsAuth:Z

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mIsAuth:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mExpressItem:Lcom/miui/home/launcher/assistant/express/ExpressItem;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/home/launcher/assistant/express/ExpressItem;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/assistant/express/ExpressItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mExpressItem:Lcom/miui/home/launcher/assistant/express/ExpressItem;

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mExpressItem:Lcom/miui/home/launcher/assistant/express/ExpressItem;

    const-string/jumbo v1, "com.miui.yellowpage"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/express/ExpressItem;->queryItem(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public refreshView(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->mIsAuth:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->showAuthorizationView()V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->showListView(Ljava/util/List;)V

    goto :goto_0
.end method
