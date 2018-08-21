.class public Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;
.super Lcom/miui/personalassistant/ui/BaseSettingActivity;
.source "CommonSettingDetailActivity.java"


# static fields
.field private static final REQUEST_LOCATION_SETTING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CommonSettingDetailActivity"


# instance fields
.field private mCardKey:Ljava/lang/String;

.field private mTitleBarStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseSettingActivity;-><init>()V

    return-void
.end method

.method private checkNetworkLocationProviderSetting()V
    .locals 5

    invoke-static {p0}, Lcom/miui/personalassistant/util/Permission;->locationingAllowed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.miui.personalassistant.LOCATION_SETTING"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CommonSettingDetailActivity"

    const-string/jumbo v4, "Activity not found!"

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getFragmentByKey()Landroid/app/Fragment;
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v1, "key_express"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;

    invoke-direct {v0}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v1, "key_step"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;

    invoke-direct {v0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v1, "key_didi_trip"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;

    invoke-direct {v0}, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;-><init>()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v1, "key_agenda_assistant"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-direct {v0}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;-><init>()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v1, "key_favorite"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;

    invoke-direct {v0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;-><init>()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v1, "key_map"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/MapSettingFragment;

    invoke-direct {v0}, Lcom/miui/personalassistant/ui/fragment/MapSettingFragment;-><init>()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v1, "key_football"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v1, "key_basketball"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    new-instance v0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-direct {v0}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;-><init>()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v1, "key_shopping"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;

    invoke-direct {v0}, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;-><init>()V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private initData(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->mCardKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/personalassistant/model/SettingCardManager;->getSettingItemByKey(Ljava/lang/String;)Lcom/miui/personalassistant/model/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingItem;->getTitleId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->mTitleBarStr:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->mTitleBarStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->getFragmentByKey()Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "cardKey"

    iget-object v5, p0, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->mCardKey:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x1b090027

    invoke-virtual {v3, v4, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x1b040071

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "setting_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "key_map"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "key_didi_trip"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->checkNetworkLocationProviderSetting()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->initData(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->initView()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "settings_set_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;->checkShowCTADialog(Landroid/content/Context;)V

    return-void
.end method
