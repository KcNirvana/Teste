.class public Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;
.super Landroid/app/Fragment;
.source "FootballBasketballSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;
    }
.end annotation


# static fields
.field public static final KEY_CARD:Ljava/lang/String; = "cardKey"

.field private static final PACKAGE_HUPU:Ljava/lang/String; = "com.hupu.games"

.field private static final TAG:Ljava/lang/String; = "FootballBasketballSettingFragment"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAdapter:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;

.field private mCardKey:Ljava/lang/String;

.field private mData:Ljava/util/ArrayList;

.field private mListView:Lcom/miui/personalassistant/ui/widget/SettingListView;

.field private mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

.field private mTvEmpty:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;-><init>(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)Lcom/miui/personalassistant/ui/widget/SettingListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mListView:Lcom/miui/personalassistant/ui/widget/SettingListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mCardKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;Lmiui/widget/DynamicListView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->resetTouchEvent(Lmiui/widget/DynamicListView;Z)V

    return-void
.end method

.method private goHuPu(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.hupu.games"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.hupu.games"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/Util;->openInMarket(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private resetTouchEvent(Lmiui/widget/DynamicListView;Z)V
    .locals 1

    invoke-virtual {p1}, Lmiui/widget/DynamicListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    const-string/jumbo v0, "FootballBasketballSettingFragment"

    const-string/jumbo v1, "onAttach"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "cardKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mCardKey:Ljava/lang/String;

    invoke-static {}, Lcom/miui/personalassistant/model/BallDataManager;->getInstance()Lcom/miui/personalassistant/model/BallDataManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mCardKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/model/BallDataManager;->getFavBallTeams(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/ImageUtil;->initImageLoader(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->getActivity()Landroid/app/Activity;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "cardKey"

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mCardKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "huputiyu://"

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->goHuPu(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "settings_set_ball_data_source_click_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mCardKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b090273
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string/jumbo v1, "FootballBasketballSettingFragment"

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x1b0400a0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b090275

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/ui/widget/SettingListView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mListView:Lcom/miui/personalassistant/ui/widget/SettingListView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mListView:Lcom/miui/personalassistant/ui/widget/SettingListView;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/ui/widget/SettingListView;->setRearrangeListener(Lmiui/widget/DynamicListView$RearrangeListener;)V

    const v1, 0x1b090274

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mTvEmpty:Landroid/widget/TextView;

    const v1, 0x1b090273

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x1b090276

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public onResume()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string/jumbo v0, "FootballBasketballSettingFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-static {}, Lcom/miui/personalassistant/model/BallDataManager;->getInstance()Lcom/miui/personalassistant/model/BallDataManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mCardKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/model/BallDataManager;->getFavBallTeams(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mData:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mListView:Lcom/miui/personalassistant/ui/widget/SettingListView;

    invoke-virtual {v0, v4}, Lcom/miui/personalassistant/ui/widget/SettingListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mTvEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mListView:Lcom/miui/personalassistant/ui/widget/SettingListView;

    invoke-virtual {v0, v3}, Lcom/miui/personalassistant/ui/widget/SettingListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mTvEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mAdapter:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;->setData(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mData:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;-><init>(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mAdapter:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mListView:Lcom/miui/personalassistant/ui/widget/SettingListView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mAdapter:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$FavFootballListAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/widget/SettingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->mListView:Lcom/miui/personalassistant/ui/widget/SettingListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/widget/SettingListView;->setClickable(Z)V

    return-void
.end method
