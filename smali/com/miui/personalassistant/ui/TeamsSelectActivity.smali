.class public Lcom/miui/personalassistant/ui/TeamsSelectActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "TeamsSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;
    }
.end annotation


# static fields
.field public static final NUM_MAX_FAV:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TeamsSelectActivity"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAdapter:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;

.field private mBallTabData:Ljava/util/ArrayList;

.field private mCardKey:Ljava/lang/String;

.field private mFavIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFavListData:Ljava/util/ArrayList;

.field private mGridView:Landroid/widget/GridView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLlRecentContainer:Landroid/widget/LinearLayout;

.field private mLlRecentLayout:Landroid/widget/LinearLayout;

.field private mLlTabContainer:Landroid/widget/LinearLayout;

.field private mNetworkReceiver:Landroid/content/BroadcastReceiver;

.field private mPositionSelectedTag:I

.field private mRecentListData:Ljava/util/ArrayList;

.field private mRlLoading:Landroid/view/View;

.field private mRlNetErrot:Landroid/view/View;

.field private mTextTabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;

.field private mWorldCupLayout:Landroid/widget/LinearLayout;

.field private mWorldCupScrollLayout:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mTextTabList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mPositionSelectedTag:I

    new-instance v0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity$5;-><init>(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mRlNetErrot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/TeamsSelectActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->parseBallListResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mTextTabList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mWorldCupScrollLayout:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/personalassistant/ui/TeamsSelectActivity;Lcom/miui/personalassistant/model/BaseBallTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->updateWorldCupUI(Lcom/miui/personalassistant/model/BaseBallTab;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mAdapter:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/personalassistant/ui/TeamsSelectActivity;I)Lcom/miui/personalassistant/model/BaseBallTab;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->getTeamTab(I)Lcom/miui/personalassistant/model/BaseBallTab;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->getTeamList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mFavIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->updateData()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mBallTabData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mRlLoading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/ui/TeamsSelectActivity;Lcom/miui/personalassistant/model/BaseBallTeam;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->doSelectAction(Lcom/miui/personalassistant/model/BaseBallTeam;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->updateTitle()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->updateTabText()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->updateRecentUI()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mPositionSelectedTag:I

    return v0
.end method

.method static synthetic access$902(Lcom/miui/personalassistant/ui/TeamsSelectActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mPositionSelectedTag:I

    return p1
.end method

.method private addRecentStat(I)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "FOOTBALL_RECENT_TOTAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mRecentListData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "FOOTBALL_RECENT_NUM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Football"

    const-string/jumbo v2, "card_view_addteam_football"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private addRecentViewToContainer(I)I
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mRecentListData:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    if-ltz p1, :cond_0

    iget-object v6, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mRecentListData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mRecentListData:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/model/BaseBallTeam;

    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x1b0400b2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x1b0900cc

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/miui/personalassistant/model/BaseBallTeam;->getImageBigUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/miui/personalassistant/util/ImageUtil;->diplay(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v6, 0x1b0902bd

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v6, Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;

    invoke-direct {v6, p0, v2, v1, v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;-><init>(Lcom/miui/personalassistant/ui/TeamsSelectActivity;Lcom/miui/personalassistant/model/BaseBallTeam;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mLlRecentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mFavIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/miui/personalassistant/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    move v4, v5

    goto :goto_0

    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method

.method private addTabViewToContainer(I)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->getTeamTab(I)Lcom/miui/personalassistant/model/BaseBallTab;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x1b04011a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x1b0903b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;-><init>(Lcom/miui/personalassistant/ui/TeamsSelectActivity;ILandroid/widget/TextView;Lcom/miui/personalassistant/model/BaseBallTab;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mTextTabList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mLlTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mBallTabData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/lit8 v5, v5, 0x1e

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method private doSelectAction(Lcom/miui/personalassistant/model/BaseBallTeam;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mFavIdList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mFavIdList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mFavListData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/miui/personalassistant/model/BaseBallTeam;

    invoke-virtual {v3}, Lcom/miui/personalassistant/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mFavListData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p3, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x1b0b0001

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mFavIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_5

    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mFavIdList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mFavListData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x1b0b0000

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1b0b03a6

    invoke-static {v3, v4}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method private getTeamList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/BaseBallTeam;",
            ">;"
        }
    .end annotation

    iget v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mPositionSelectedTag:I

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->getTeamTab(I)Lcom/miui/personalassistant/model/BaseBallTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/personalassistant/model/BaseBallTab;->getTeamList()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method private getTeamTab(I)Lcom/miui/personalassistant/model/BaseBallTab;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mBallTabData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mBallTabData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mBallTabData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/BaseBallTab;

    goto :goto_0
.end method

.method private initView()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/personalassistant/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    const v4, 0x1b0902d1

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v6, v4, v6, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {p0}, Lcom/miui/personalassistant/util/StatusBarUtil;->darkWordBar(Landroid/app/Activity;)V

    const v4, 0x1b0901f8

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x1b0902d2

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x1b0902d3

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x1b0902d4

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mLlTabContainer:Landroid/widget/LinearLayout;

    const v4, 0x1b0902d5

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mGridView:Landroid/widget/GridView;

    new-instance v4, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;

    invoke-direct {v4, p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;-><init>(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V

    iput-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mAdapter:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;

    iget-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mGridView:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mAdapter:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v4, 0x1b0902db

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mRlLoading:Landroid/view/View;

    const v4, 0x1b0902dc

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mRlNetErrot:Landroid/view/View;

    const v4, 0x1b0902de

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v4, "accessibility"

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const v4, 0x1b0902d8

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mLlRecentLayout:Landroid/widget/LinearLayout;

    const v4, 0x1b0902da

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mLlRecentContainer:Landroid/widget/LinearLayout;

    const v4, 0x1b0902d6

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mWorldCupScrollLayout:Landroid/widget/ScrollView;

    const v4, 0x1b0902d7

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mWorldCupLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method private parseBallListResponse(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v1, "key_football"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/miui/personalassistant/model/FootballTab;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mBallTabData:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v1, "key_basketball"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/miui/personalassistant/model/BasketballTab;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mBallTabData:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private updateData()V
    .locals 3

    const-string/jumbo v1, "TeamsSelectActivity"

    const-string/jumbo v2, "updateData"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "cardKey"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mCardKey:Ljava/lang/String;

    invoke-static {}, Lcom/miui/personalassistant/model/BallDataManager;->getInstance()Lcom/miui/personalassistant/model/BallDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mCardKey:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/miui/personalassistant/model/BallDataManager;->getFavBallTeamsIds(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mFavIdList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/personalassistant/model/BallDataManager;->getInstance()Lcom/miui/personalassistant/model/BallDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mCardKey:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/miui/personalassistant/model/BallDataManager;->getFavBallTeams(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mFavListData:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/personalassistant/model/BallDataManager;->getInstance()Lcom/miui/personalassistant/model/BallDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mCardKey:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/miui/personalassistant/model/BallDataManager;->getRecentBallTeams(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mRecentListData:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->updateTitle()V

    new-instance v0, Lcom/miui/personalassistant/request/BallTeamsRequest;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mCardKey:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/request/BallTeamsRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity$1;-><init>(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/request/BallTeamsRequest;->get(Lcom/miui/personalassistant/request/core/IDataStatusChangedListener;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->updateRecentUI()V

    return-void
.end method

.method private updateRecentUI()V
    .locals 4

    const-string/jumbo v2, "TeamsSelectActivity"

    const-string/jumbo v3, "updateRecentUI"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mRecentListData:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mRecentListData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mLlRecentLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mLlRecentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mRecentListData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->addRecentViewToContainer(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->addRecentStat(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mLlRecentLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateTabText()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mTextTabList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mTextTabList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/model/BaseBallTab;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mFavIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/miui/personalassistant/model/BaseBallTab;->getSelectTeamNum(Ljava/util/ArrayList;)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/miui/personalassistant/model/BaseBallTab;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_2

    const-string/jumbo v4, ""

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private updateTitle()V
    .locals 4

    const v1, 0x1b0b03a5

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\uff08"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mFavIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\uff09"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateUI()V
    .locals 4

    const-string/jumbo v2, "TeamsSelectActivity"

    const-string/jumbo v3, "updateUI"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mBallTabData:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mBallTabData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mLlTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mTextTabList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mBallTabData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->addTabViewToContainer(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->updateTabText()V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mAdapter:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;

    invoke-virtual {v2}, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;->notifyDataSetChanged()V

    iget v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mPositionSelectedTag:I

    invoke-direct {p0, v2}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->getTeamTab(I)Lcom/miui/personalassistant/model/BaseBallTab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/personalassistant/model/BaseBallTab;->isWorldCup()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mWorldCupScrollLayout:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->updateWorldCupUI(Lcom/miui/personalassistant/model/BaseBallTab;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mWorldCupScrollLayout:Landroid/widget/ScrollView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateWorldCupUI(Lcom/miui/personalassistant/model/BaseBallTab;)V
    .locals 20

    const-string/jumbo v16, "TeamsSelectActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updateWorldCupUI tab = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->getTeamList()Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mWorldCupLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v2, 0x4

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v16

    div-int/lit8 v4, v16, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1b08000d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x1b0400b3

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v16, 0x1b0902bf

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    aget-object v16, v3, v5

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v16, 0x1b0902c0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_3

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    mul-int/lit8 v16, v5, 0x4

    add-int v16, v16, v6

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/personalassistant/model/BaseBallTeam;

    if-eqz v13, :cond_0

    const v16, 0x1b0900ce

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v13}, Lcom/miui/personalassistant/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v16, 0x1b0900cc

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v13}, Lcom/miui/personalassistant/model/BaseBallTeam;->getImageBigUrl()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v10}, Lcom/miui/personalassistant/util/ImageUtil;->diplay(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v16, 0x1b0902bd

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mFavIdList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual {v13}, Lcom/miui/personalassistant/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1b0b052b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v13}, Lcom/miui/personalassistant/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v16, 0x1b0902bc

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    new-instance v17, Lcom/miui/personalassistant/ui/TeamsSelectActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v12, v10}, Lcom/miui/personalassistant/ui/TeamsSelectActivity$2;-><init>(Lcom/miui/personalassistant/ui/TeamsSelectActivity;Lcom/miui/personalassistant/model/BaseBallTeam;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_2
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mWorldCupLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v16, "card_view_addteam_worldcup_football"

    invoke-static/range {v16 .. v16}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/miui/personalassistant/model/BallDataManager;->getInstance()Lcom/miui/personalassistant/model/BallDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mFavListData:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mCardKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/miui/personalassistant/model/BallDataManager;->setFavBallTeams(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    const-string/jumbo v0, "key_football"

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mCardKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "7"

    :goto_1
    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setUnSync(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "8"

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "TeamsSelectActivity"

    const-string/jumbo v1, "btn_retry click"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->updateData()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1b0902d2 -> :sswitch_0
        0x1b0902d3 -> :sswitch_1
        0x1b0902de -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1b0400bd

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->initView()V

    invoke-static {p0}, Lcom/miui/personalassistant/util/ImageUtil;->initImageLoader(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->registerReceiver()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.MINUS_SCREEN_WORLD_CUP_SHOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->unregisterReceiver()V

    return-void
.end method

.method public registerReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
