.class public Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "BaseBallCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$IUpdateLisener;


# static fields
.field private static final ACTION_SELECT_TEAM:Ljava/lang/String; = "com.miui.personalassistant.SELECT_TEAM"

.field private static final KEY_UPDATE_TIME:Ljava/lang/String; = "key_update_time"

.field private static final NUM_MAX_TEAMS:I = 0x5

.field public static final PACKAGE_HUPU:Ljava/lang/String; = "com.hupu.games"

.field public static final PACKAGE_YOUKU:Ljava/lang/String; = "com.youku.phone"

.field private static final STAT_SUFFIX_DOWNLOAD:Ljava/lang/String; = "_download"

.field private static final STAT_SUFFIX_HUPU:Ljava/lang/String; = "_hupu"

.field private static final STAT_SUFFIX_YOUKU:Ljava/lang/String; = "_youku"

.field private static final STAT_SUFFIX_YOUKU_DOWNLOAD:Ljava/lang/String; = "_youku_download"

.field private static final TAG:Ljava/lang/String; = "BaseBallCardView"

.field private static final TIME_UPDATE_INTERVAL:J = 0x2710L


# instance fields
.field private isNewsUIDone:Z

.field private isRecentUIDone:Z

.field private isScoreUIDone:Z

.field private mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

.field private mCardKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEmptyBtn:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIvTipClose:Landroid/widget/ImageView;

.field private mIvTitle:Landroid/widget/ImageView;

.field private mLlDataContainer:Landroid/widget/LinearLayout;

.field private mLlDataNetErrot:Landroid/widget/LinearLayout;

.field private mLlHupuBtnContainer:Landroid/widget/LinearLayout;

.field private mLlNewsContainer:Landroid/widget/LinearLayout;

.field private mLlRankList:Landroid/widget/LinearLayout;

.field private mLlRecent:Landroid/widget/LinearLayout;

.field private mLlScore:Landroid/widget/LinearLayout;

.field private mLlTabContainer:Landroid/widget/LinearLayout;

.field private mLlTipContainer:Landroid/widget/LinearLayout;

.field private mNetUnavailView:Landroid/widget/TextView;

.field private mPositionSelectedTag:I

.field private mTeamIdSelected:Ljava/lang/String;

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

.field private mTvBottomNews:Landroid/widget/TextView;

.field private mTvBottomRank:Landroid/widget/TextView;

.field private mTvRankTitle:Landroid/widget/TextView;

.field private mTvTip:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mViewEmpty:Landroid/view/ViewStub;

.field private mViewMain:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTextTabList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isRecentUIDone:Z

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isScoreUIDone:Z

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isNewsUIDone:Z

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "BaseBallCardView"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/AssistantApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->setUpdateListener(Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$IUpdateLisener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->addBallUpdateLisener(Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$IUpdateLisener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Lcom/miui/home/launcher/assistant/module/carditem/BallItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;I)Landroid/widget/TextView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTeamIdSelected:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->refreshView(Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateRecentUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateScoreUI(Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateNewsUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateWorldCupUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->goYouKu(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->goHuPu(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addLineView(Landroid/widget/LinearLayout;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "BaseBallCardView"

    const-string/jumbo v3, "addLineView"

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0f0099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private addTabViewToContainer(I)V
    .locals 4

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v3, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeam(I)Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x1b0903b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;

    invoke-direct {v3, p0, p1, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;-><init>(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;ILandroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTextTabList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private bindRecentDataToUI(Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;Landroid/view/View;)V
    .locals 17

    const v14, 0x1b09012d

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x1b09012f

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v14, 0x1b090133

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v14, 0x1b090135

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v14, 0x1b090136

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v14, 0x1b09012e

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v14, 0x1b090134

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v14, 0x1b090131

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v14, 0x1b090130

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v14, 0x1b090132

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->getHomeTeam()Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeamId(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getImageBigUrl()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->loadIv(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->getAwayTeam()Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeamId(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getImageBigUrl()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->loadIv(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->league:Lcom/miui/home/launcher/assistant/module/model/BallLeague;

    iget-object v14, v14, Lcom/miui/home/launcher/assistant/module/model/BallLeague;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->isGameIng()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->home_score:Ljava/lang/String;

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->away_score:Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x1b0b0050

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(I)V

    const v14, 0x1b0b004f

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    invoke-virtual {v14, v15}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->isWordlCupTeam(I)Z

    move-result v14

    if-eqz v14, :cond_2

    const v14, 0x1b0b0501

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(I)V

    new-instance v14, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v11, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Landroid/widget/TextView;Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;)V

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_2
    const v14, 0x1b0b0051

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(I)V

    new-instance v14, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v11}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$3;-><init>(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;Landroid/widget/TextView;)V

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->isGameEnd()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->home_score:Ljava/lang/String;

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->away_score:Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x1b0b0050

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(I)V

    const v14, 0x1b0b004d

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    const v14, 0x1b0b004e

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(I)V

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v14, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v11}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;-><init>(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;Landroid/widget/TextView;)V

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    const v14, 0x1b0b004c

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->getGameStartTime()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v14, ""

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v14, ""

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private bindRecentDataToWorldCupUI(Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;Landroid/view/View;I)V
    .locals 15

    const v12, 0x1b09012d

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x1b09012f

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v12, 0x1b090133

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v12, 0x1b090135

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v12, 0x1b09012e

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v12, 0x1b090134

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v12, 0x1b090131

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v12, 0x1b090130

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v12, 0x1b090132

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->getHomeTeam()Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v14, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    invoke-virtual {v13, v14}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeamId(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getImageBigUrl()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v4, v12}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->loadIv(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->getAwayTeam()Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v14, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    invoke-virtual {v13, v14}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeamId(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getImageBigUrl()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v3, v12}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->loadIv(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->league:Lcom/miui/home/launcher/assistant/module/model/BallLeague;

    iget-object v12, v12, Lcom/miui/home/launcher/assistant/module/model/BallLeague;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->isGameIng()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->home_score:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->away_score:Ljava/lang/String;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x1b0b0050

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(I)V

    const v12, 0x1b0b0500

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1b0f009d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v12, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$5;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v10, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$5;-><init>(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Landroid/widget/TextView;Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;)V

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->isGameEnd()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->home_score:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->away_score:Ljava/lang/String;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x1b0b0050

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(I)V

    const v12, 0x1b0b04ff

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1b0f009d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v12, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$6;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0, v10}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$6;-><init>(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;Landroid/widget/TextView;)V

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    const v12, 0x1b0b004c

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->getGameStartTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v12, ""

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v12, ""

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1b0f009c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private closeWorldCupTip()V
    .locals 3

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    const-string/jumbo v2, "key_football"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mIvTipClose:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mIvTipClose:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/home/launcher/assistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateFinalUIItem()V

    :cond_0
    return-void
.end method

.method private getTextView(I)Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTextTabList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTextTabList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTextTabList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method private goHuPu(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const v3, 0x10008000

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.hupu.games"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.miui.personalassistant.BALL_DIALOG"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "key_packagename"

    const-string/jumbo v1, "com.hupu.games"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getFootballWorldCup()Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeam(I)Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeam(I)Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->isWorldCupTeam()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "card_button_click_worldcup_football_click_hupu"

    const-string/jumbo v2, "15"

    const-string/jumbo v3, "BaseBallCardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_download"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getTodayString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "card_button_click_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "15"

    const-string/jumbo v3, "BaseBallCardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_download"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "BaseBallCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "goHuPu schema="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->isWordlCupTab(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->isWordlCupTeam(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "card_button_click_worldcup_football_click_hupu"

    const-string/jumbo v2, "15"

    const-string/jumbo v3, "BaseBallCardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_hupu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getTodayString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "card_button_click_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "15"

    const-string/jumbo v3, "BaseBallCardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_hupu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private goYouKu(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.youku.phone"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "card_button_click_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "15"

    const-string/jumbo v4, "BaseBallCardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_youku_download"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.personalassistant.BALL_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "key_packagename"

    const-string/jumbo v2, "com.youku.phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "card_button_click_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "15"

    const-string/jumbo v4, "BaseBallCardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_youku"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initEmptyView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mViewEmpty:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const v0, 0x1b090137

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mViewEmpty:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mViewEmpty:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x1b09015b

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getEmptyImageId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x1b090155

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mEmptyBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mEmptyBtn:Landroid/widget/TextView;

    const v1, 0x1b0b003a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mEmptyBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mEmptyBtn:Landroid/widget/TextView;

    const v1, 0x1b0200e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method private initMainView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mViewMain:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x1b090138

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mViewMain:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mViewMain:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x1b09011a

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlDataContainer:Landroid/widget/LinearLayout;

    const v0, 0x1b090119

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlDataNetErrot:Landroid/widget/LinearLayout;

    const v0, 0x1b090118

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlTabContainer:Landroid/widget/LinearLayout;

    const v0, 0x1b090128

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvBottomRank:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvBottomRank:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b090129

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvBottomNews:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvBottomNews:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b09011b

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlRecent:Landroid/widget/LinearLayout;

    const v0, 0x1b09011c

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlScore:Landroid/widget/LinearLayout;

    const v0, 0x1b09011d

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvRankTitle:Landroid/widget/TextView;

    const v0, 0x1b090125

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlRankList:Landroid/widget/LinearLayout;

    const v0, 0x1b090127

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlHupuBtnContainer:Landroid/widget/LinearLayout;

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvBottomRank:Landroid/widget/TextView;

    const v1, 0x1b0202eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvBottomNews:Landroid/widget/TextView;

    const v1, 0x1b0202ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    const v0, 0x1b090126

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlNewsContainer:Landroid/widget/LinearLayout;

    const v0, 0x1b090115

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlTipContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlTipContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlTipContainer:Landroid/widget/LinearLayout;

    const v1, 0x1b090116

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvTip:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlTipContainer:Landroid/widget/LinearLayout;

    const v1, 0x1b090117

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mIvTipClose:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mIvTipClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private loadIv(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2, p1}, Lcom/miui/home/launcher/assistant/util/ImageUtil;->diplay(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private refreshView(Ljava/lang/Object;Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string/jumbo v1, "BaseBallCardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshView..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\tisTeamSelectChanged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->initEmptyView()V

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateShowViewVisibility(Z)V

    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    const-string/jumbo v2, "key_football"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->updateWorldCupData(ILjava/lang/String;Landroid/os/Handler;Z)V

    :cond_1
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateTrackEvent(Z)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->initMainView()V

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateShowViewVisibility(Z)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updatePositionSelected(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez p2, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    move v1, v3

    :goto_1
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateMainView(Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private updateFinalUIItem()V
    .locals 8

    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getFootballWorldCup()Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getFootballWorldCup()Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    move-result-object v3

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;->tip_add_team:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "tip_add_team"

    invoke-static {v3, v4, v5}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getFootballWorldCup()Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    move-result-object v3

    iget-object v2, v3, Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;->tip_add_team:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mIvTipClose:Landroid/widget/ImageView;

    const-string/jumbo v4, "tip_add_team"

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvTip:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlTipContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeamId(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvBottomRank:Landroid/widget/TextView;

    const v4, 0x1b0b0502

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvBottomNews:Landroid/widget/TextView;

    const v4, 0x1b0b04fe

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    const-string/jumbo v3, "BaseBallCardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateFinalUIItem isRecentUIDone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isRecentUIDone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isScoreUIDone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isScoreUIDone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isNewsUIDone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isNewsUIDone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isRecentUIDone:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isScoreUIDone:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isNewsUIDone:Z

    if-nez v3, :cond_6

    :cond_1
    :goto_3
    return-void

    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getFootballWorldCup()Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    move-result-object v3

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;->tip_resume:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "tip_resume"

    invoke-static {v3, v4, v5}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getFootballWorldCup()Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    move-result-object v3

    iget-object v2, v3, Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;->tip_resume:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mIvTipClose:Landroid/widget/ImageView;

    const-string/jumbo v4, "tip_resume"

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlTipContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlTipContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvBottomRank:Landroid/widget/TextView;

    const v4, 0x1b0b0053

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvBottomNews:Landroid/widget/TextView;

    const v4, 0x1b0b0044

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlHupuBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlNewsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlNewsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlScore:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlScore:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlRecent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlRecent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    goto/16 :goto_3
.end method

.method private updateMainView(Z)V
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v1, "BaseBallCardView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateMainView isTeamSelectChanged = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTextTabList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->addTabViewToContainer(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getBallTeamList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getBallTeamList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x1

    if-le v1, v6, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateTabText()V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "key_update_time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-static {v1, v6, v8, v9}, Lcom/miui/home/launcher/assistant/util/Preference;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-nez p1, :cond_1

    sub-long v6, v4, v2

    const-wide/16 v8, 0x2710

    cmp-long v1, v6, v8

    if-lez v1, :cond_3

    :cond_1
    iput-boolean v10, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isRecentUIDone:Z

    iput-boolean v10, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isScoreUIDone:Z

    iput-boolean v10, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isNewsUIDone:Z

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v6, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v7, v8, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->updateRecentData(ILjava/lang/String;Landroid/os/Handler;Z)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v6, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v7, v8, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->updateScoreData(ILjava/lang/String;Landroid/os/Handler;Z)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v6, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v7, v8, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->updateNewsData(ILjava/lang/String;Landroid/os/Handler;Z)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "key_update_time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v1, v6, v7}, Lcom/miui/home/launcher/assistant/util/Preference;->setLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "BaseBallCardView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " update timeNow = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlTabContainer:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v1, "BaseBallCardView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not update"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateNewsUI(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/BallNews;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x1

    const-string/jumbo v7, "BaseBallCardView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateNewsUI news = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlNewsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    iput-boolean v10, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isNewsUIDone:Z

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateFinalUIItem()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    move v4, v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/assistant/module/model/BallNews;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x1b04003c

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v7, 0x1b0900ec

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x1b09012c

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x1b09006c

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v7, v2, Lcom/miui/home/launcher/assistant/module/model/BallNews;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v2, Lcom/miui/home/launcher/assistant/module/model/BallNews;->publish_time:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v2, Lcom/miui/home/launcher/assistant/module/model/BallNews;->img_url:Ljava/lang/String;

    invoke-direct {p0, v1, v7}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->loadIv(Landroid/widget/ImageView;Ljava/lang/String;)V

    const v7, 0x1b09012a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$7;

    invoke-direct {v8, p0, v2, v4}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$7;-><init>(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Lcom/miui/home/launcher/assistant/module/model/BallNews;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlNewsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v10, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isNewsUIDone:Z

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateFinalUIItem()V

    goto :goto_0
.end method

.method private updateNoNetworkView()V
    .locals 5

    const/16 v3, 0x8

    const/4 v1, 0x0

    const-string/jumbo v2, "BaseBallCardView"

    const-string/jumbo v4, "updateNoNetworkView"

    invoke-static {v2, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getRecentGameList()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getScoreResponse()Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlDataContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlDataNetErrot:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2
.end method

.method private updatePositionSelected(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    invoke-virtual {v4}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTeamIdSelected:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    invoke-virtual {v4}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v0

    :cond_0
    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    if-eq v4, v2, :cond_4

    const/4 v1, 0x1

    :goto_1
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    move v2, v5

    :cond_1
    iput v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v5, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeam(I)Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTeamIdSelected:Ljava/lang/String;

    :cond_2
    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_1
.end method

.method private updateRecentUI(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "BaseBallCardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRecentUI recentGameList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateNoNetworkView()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlRecent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlRecent:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x1b04003e

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-boolean v7, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isRecentUIDone:Z

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateFinalUIItem()V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlRecent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->isWordlCupTab(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x1b04003f

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v0, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;

    invoke-direct {p0, v0, v2, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->bindRecentDataToWorldCupUI(Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;Landroid/view/View;I)V

    :goto_2
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlRecent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x1b04003d

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->bindRecentDataToUI(Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;Landroid/view/View;)V

    goto :goto_2

    :cond_3
    iput-boolean v7, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isRecentUIDone:Z

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateFinalUIItem()V

    goto :goto_0
.end method

.method private updateScoreUI(Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;)V
    .locals 22

    const-string/jumbo v19, "BaseBallCardView"

    const-string/jumbo v20, "updateScoreUI"

    invoke-static/range {v19 .. v20}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateNoNetworkView()V

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;->getScoreList()Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;->getScoreList()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlScore:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isScoreUIDone:Z

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateFinalUIItem()V

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvRankTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;->getLeagueName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "key_football"

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    const v19, 0x1b09011e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    const v19, 0x1b09011f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    const v19, 0x1b090120

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    const v19, 0x1b090121

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    const v19, 0x1b090122

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x1b0b004b

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    const v19, 0x1b090123

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x1b0b0048

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    const v19, 0x1b090124

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;->getScoreList()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlScore:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isScoreUIDone:Z

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateFinalUIItem()V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "key_basketball"

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    const v19, 0x1b09011e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    const v19, 0x1b09011f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    const v19, 0x1b090120

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    const v19, 0x1b090121

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    const v19, 0x1b090122

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x1b0b003b

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    const v19, 0x1b090123

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x1b0b003c

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    const v19, 0x1b090124

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    const v19, 0x1b090124

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x1b0b003d

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlScore:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlScore:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setSelected(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlRankList:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x1b04002b

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlRankList:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v3, v0, :cond_9

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x1b0400a5

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setFocusable(Z)V

    const v19, 0x1b090286

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v19, 0x1b090287

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v19, 0x1b090288

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v19, 0x1b090289

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v19, 0x1b09028a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v19, 0x1b09028b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v19, 0x1b09028c

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v19, 0x1b09028d

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v19, 0x1b09028e

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v19, 0x1b09028f

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    iget v0, v8, Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;->rank_index:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;->getLogoUrl()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->loadIv(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;->getTeamName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "key_football"

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_8

    instance-of v0, v8, Lcom/miui/home/launcher/assistant/module/model/FootballScore;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v19, v8

    check-cast v19, Lcom/miui/home/launcher/assistant/module/model/FootballScore;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/model/FootballScore;->played:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v8, Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;->win:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v19, v8

    check-cast v19, Lcom/miui/home/launcher/assistant/module/model/FootballScore;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/model/FootballScore;->draw:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v8, Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;->lost:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v8

    check-cast v19, Lcom/miui/home/launcher/assistant/module/model/FootballScore;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/model/FootballScore;->hits:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v19, v8

    check-cast v19, Lcom/miui/home/launcher/assistant/module/model/FootballScore;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/model/FootballScore;->miss:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v19, v8

    check-cast v19, Lcom/miui/home/launcher/assistant/module/model/FootballScore;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/model/FootballScore;->score:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_3
    iget-object v0, v8, Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;->team_id:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeamId(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlRankList:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v19, v3, 0x1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    iget v0, v8, Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;->rank_index:I

    move/from16 v20, v0

    add-int/lit8 v19, v3, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;->rank_index:I

    move/from16 v19, v0

    sub-int v19, v20, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v2, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlRankList:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->addLineView(Landroid/widget/LinearLayout;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "key_basketball"

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    instance-of v0, v8, Lcom/miui/home/launcher/assistant/module/model/BasketballScore;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;->win:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;->lost:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v19, v8

    check-cast v19, Lcom/miui/home/launcher/assistant/module/model/BasketballScore;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/model/BasketballScore;->gb:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v19, v8

    check-cast v19, Lcom/miui/home/launcher/assistant/module/model/BasketballScore;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/model/BasketballScore;->strk:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_9
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->isScoreUIDone:Z

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateFinalUIItem()V

    goto/16 :goto_0
.end method

.method private updateShowViewVisibility(Z)V
    .locals 6

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mViewMain:Landroid/view/ViewStub;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mViewMain:Landroid/view/ViewStub;

    invoke-virtual {v4, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_3

    move v0, v3

    :goto_1
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mViewEmpty:Landroid/view/ViewStub;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mViewEmpty:Landroid/view/ViewStub;

    invoke-virtual {v4, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mNetUnavailView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method private updateTabText()V
    .locals 6

    const-string/jumbo v3, "BaseBallCardView"

    const-string/jumbo v4, "updateTabText mTextTabList = "

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTextTabList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTextTabList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    const-string/jumbo v3, "BaseBallCardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\t "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateTrackEvent(Z)V
    .locals 14

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    const-string/jumbo v1, "key_football"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlTipContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlTipContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "tip_football"

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvTip:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackScreenCards(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeam(I)Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v13

    if-eqz v13, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "worldcup_football"

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackScreenCards(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getNewsList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getNewsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    if-eqz v13, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "news_football"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackScreenCards(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getFootballWorldCup()Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->isWorldCupTeam()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "worldcup_team"

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getTodayString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackScreenCards(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->isWordlCupTab(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlRecent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlRecent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    :goto_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlRecent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mLlRecent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b090135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-nez v12, :cond_7

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "worldcup_live_football"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackScreenCards(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->isWordlCupTeam(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getRecentGameList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getRecentGameList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getRecentGameList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->isGameIng()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b0501

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v9

    :cond_9
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_world_cup_live_button_show"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackScreenCards(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private updateWorldCupUI()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getFootballWorldCup()Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    move-result-object v0

    const-string/jumbo v1, "BaseBallCardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWorldCupUI worldCup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->initMainView()V

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getBallTeamList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getBallTeamList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateShowViewVisibility(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateShowViewVisibility(Z)V

    invoke-direct {p0, v4}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateMainView(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getItemQuantity()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getBallTeamList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getBallTeamList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.personalassistant.SELECT_TEAM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "cardKey"

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "card_button_click_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "15"

    const-string/jumbo v5, "BaseBallCardView"

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mEmptyBtn:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getHupuDetailsSchema(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvBottomRank:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->goHuPu(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getHupuNewsSchema(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvBottomNews:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->goHuPu(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "card_button_click_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_tip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "15"

    const-string/jumbo v5, "BaseBallCardView"

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvTip:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->closeWorldCupTip()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.personalassistant.SELECT_TEAM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "cardKey"

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "card_button_click_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_tip_close"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "15"

    const-string/jumbo v5, "BaseBallCardView"

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvTip:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->closeWorldCupTip()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b090115 -> :sswitch_3
        0x1b090117 -> :sswitch_4
        0x1b090128 -> :sswitch_1
        0x1b090129 -> :sswitch_2
        0x1b090155 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onFinishInflate()V

    const v0, 0x1b090185

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mNetUnavailView:Landroid/widget/TextView;

    return-void
.end method

.method public onHupuBtnStateChanged()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getBallTeamList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->refreshView(Ljava/lang/Object;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->refreshView(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public onNetworkChanged()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getRecentGameList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getScoreResponse()Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->updateRecentData(ILjava/lang/String;Landroid/os/Handler;Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mPositionSelectedTag:I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->updateScoreData(ILjava/lang/String;Landroid/os/Handler;Z)V

    :cond_0
    return-void
.end method

.method public onWorldCupTabShowed()V
    .locals 2

    const-string/jumbo v0, "BaseBallCardView"

    const-string/jumbo v1, "onWorldCupTabShowed"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->closeWorldCupTip()V

    return-void
.end method

.method public bridge synthetic queryItemData()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->queryItemData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public queryItemData()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "BaseBallCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryItemData ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->queryItem(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public refreshView(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->refreshView(Ljava/lang/Object;Z)V

    return-void
.end method

.method public updateCard(Lcom/miui/home/launcher/assistant/module/CardSource;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->updateCard(Lcom/miui/home/launcher/assistant/module/CardSource;I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x1b0900d6

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mTvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTitleId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mIvTitle:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    const v0, 0x1b090184

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mIvTitle:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mIvTitle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mBallItem:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->mCardKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTitleIconId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method
