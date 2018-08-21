.class public Lcom/miui/personalassistant/ui/CardSettingsActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "CardSettingsActivity.java"


# static fields
.field public static final DB_UNIQUEID:Ljava/lang/String; = "0"

.field private static final MAX_CLICK_NUM:I = 0x5

.field private static sClickNum:I

.field private static sClickTime:J


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdapterAdded:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

.field private mAdapterAddedNot:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

.field private mAddedListener:Lmiui/widget/DynamicListView$RearrangeListener;

.field private mDynamicListViewAdded:Lmiui/widget/DynamicListView;

.field private mDynamicListViewAddedNot:Lmiui/widget/DynamicListView;

.field private mEntriesAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEntriesAddedNot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTouchDrag:Z

.field private mItemOperateListener:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$OnSettingItemOpetateListener;

.field private mLightBgForClock:Z

.field private mTvMore:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->sClickTime:J

    const/4 v0, 0x0

    sput v0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->sClickNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "CardSettingsActivity"

    iput-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mEntriesAdded:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mEntriesAddedNot:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mHiddenEntries:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mIsTouchDrag:Z

    iput-boolean v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mLightBgForClock:Z

    new-instance v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity$6;-><init>(Lcom/miui/personalassistant/ui/CardSettingsActivity;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mAddedListener:Lmiui/widget/DynamicListView$RearrangeListener;

    new-instance v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;-><init>(Lcom/miui/personalassistant/ui/CardSettingsActivity;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mItemOperateListener:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$OnSettingItemOpetateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mIsTouchDrag:Z

    return v0
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/ui/CardSettingsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mIsTouchDrag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mEntriesAdded:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/personalassistant/ui/CardSettingsActivity;Lmiui/widget/DynamicListView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->resetTouchEvent(Lmiui/widget/DynamicListView;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/personalassistant/ui/CardSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->modifyOrderStatus()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/personalassistant/ui/CardSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->saveDB()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/CardSettingsActivity;Lcom/miui/personalassistant/model/SettingItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->gotoActivity(Lcom/miui/personalassistant/model/SettingItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mEntriesAddedNot:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->initData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mHiddenEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mAdapterAdded:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mAdapterAddedNot:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mTvMore:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Lmiui/widget/DynamicListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mDynamicListViewAdded:Lmiui/widget/DynamicListView;

    return-object v0
.end method

.method private getData()Ljava/lang/String;
    .locals 12

    invoke-static {p0}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/AssistantContentStorage;

    move-result-object v0

    const-string/jumbo v1, "com.miui.personalassistant.SETTINGS_ORDER_V9"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->query(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/miui/personalassistant/util/OrderUtil;->createOrderData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/AssistantContentStorage;

    move-result-object v0

    const-string/jumbo v1, "com.miui.personalassistant.SETTINGS_ORDER_V9"

    const-string/jumbo v2, "0"

    const-string/jumbo v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)Z

    const-string/jumbo v0, "1"

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setUnSync(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v6

    :cond_2
    :try_start_1
    const-string/jumbo v0, "com.miui.personalassistant.SETTINGS_ORDER_V9"

    const-string/jumbo v1, "com.miui.personalassistant.SETTINGS_ORDER_V9"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "timestamp"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/miui/personalassistant/util/CryptUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private gotoActivity(Lcom/miui/personalassistant/model/SettingItem;)V
    .locals 4

    const-string/jumbo v1, "CardSettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UPDATE gotoActivity settingItem.getId()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/SettingItem;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/SettingItem;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/SettingItem;->getDisable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/miui/personalassistant/model/SettingCardManager$CARD_SOURCE_ID;->FUNCTION:Lcom/miui/personalassistant/model/SettingCardManager$CARD_SOURCE_ID;

    invoke-virtual {v1}, Lcom/miui/personalassistant/model/SettingCardManager$CARD_SOURCE_ID;->ordinal()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/SettingItem;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/personalassistant/ui/LaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "hasLightBgForClock"

    iget-boolean v2, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mLightBgForClock:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/personalassistant/ui/CommonSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "setting_type"

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/SettingItem;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "hasLightBgForClock"

    iget-boolean v2, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mLightBgForClock:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initData()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/SettingItem;",
            ">;>;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->getData()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->updateSettingItem()V

    :try_start_0
    sget-object v12, Lcom/miui/personalassistant/model/SettingCardManager;->CARD_LIST:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/personalassistant/model/SettingItem;

    invoke-virtual {v7}, Lcom/miui/personalassistant/model/SettingItem;->getPrefKey()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/miui/personalassistant/util/CardStatusUtil;->isCardCloudDisable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v12, "CardSettingsActivity"

    const-string/jumbo v13, "JSONException "

    invoke-static {v12, v13, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {v7}, Lcom/miui/personalassistant/model/SettingItem;->getPrefKey()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/miui/personalassistant/util/CardStatusUtil;->getCardStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "CardSettingsActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getSettingOrderFromDb ->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_4

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v12, "prefKey"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0, v3, v10}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->sortListData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, v4, v10}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->sortListData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private initView()V
    .locals 4

    const v0, 0x1b09010c

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mTvMore:Landroid/widget/TextView;

    const v0, 0x1b09010b

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/DynamicListView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mDynamicListViewAdded:Lmiui/widget/DynamicListView;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mDynamicListViewAdded:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mAddedListener:Lmiui/widget/DynamicListView$RearrangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setRearrangeListener(Lmiui/widget/DynamicListView$RearrangeListener;)V

    const v0, 0x1b09010d

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/DynamicListView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mDynamicListViewAddedNot:Lmiui/widget/DynamicListView;

    new-instance v0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mEntriesAdded:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mDynamicListViewAdded:Lmiui/widget/DynamicListView;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lmiui/widget/DynamicListView;Z)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mAdapterAdded:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mAdapterAdded:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mItemOperateListener:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$OnSettingItemOpetateListener;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->setOnOpeListener(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$OnSettingItemOpetateListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mDynamicListViewAdded:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mAdapterAdded:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mDynamicListViewAdded:Lmiui/widget/DynamicListView;

    new-instance v1, Lcom/miui/personalassistant/ui/CardSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity$1;-><init>(Lcom/miui/personalassistant/ui/CardSettingsActivity;)V

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mEntriesAddedNot:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mDynamicListViewAddedNot:Lmiui/widget/DynamicListView;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lmiui/widget/DynamicListView;Z)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mAdapterAddedNot:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mAdapterAddedNot:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mItemOperateListener:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$OnSettingItemOpetateListener;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->setOnOpeListener(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$OnSettingItemOpetateListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mDynamicListViewAddedNot:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mAdapterAddedNot:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mDynamicListViewAddedNot:Lmiui/widget/DynamicListView;

    new-instance v1, Lcom/miui/personalassistant/ui/CardSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity$2;-><init>(Lcom/miui/personalassistant/ui/CardSettingsActivity;)V

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private modifyOrderStatus()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->saveDB()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mAdapterAdded:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mAdapterAddedNot:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private resetTouchEvent(Lmiui/widget/DynamicListView;Z)V
    .locals 1

    invoke-virtual {p1}, Lmiui/widget/DynamicListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method private saveDB()V
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity$5;-><init>(Lcom/miui/personalassistant/ui/CardSettingsActivity;)V

    invoke-static {v0}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sortListData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/SettingItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$3;

    invoke-direct {v0, p0, p2}, Lcom/miui/personalassistant/ui/CardSettingsActivity$3;-><init>(Lcom/miui/personalassistant/ui/CardSettingsActivity;Ljava/util/ArrayList;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateSettingItem()V
    .locals 10

    const v9, 0x1b020205    # 1.0754E-22f

    const v8, 0x1b0201f0

    const v7, 0x1b0201ef

    const v6, 0x1b0201eb

    const v5, 0x1b0201c4

    sget-object v2, Lcom/miui/personalassistant/model/SettingCardManager;->CARD_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/SettingItem;

    const-string/jumbo v3, "key_stock"

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingItem;->getPrefKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/miui/personalassistant/stock/utils/StockPrefs;->getColorSchema(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingItem;->getResIconId()I

    move-result v3

    if-eq v3, v8, :cond_2

    invoke-virtual {v0, v8}, Lcom/miui/personalassistant/model/SettingItem;->setResIconId(I)V

    const v3, 0x1b02020c

    invoke-virtual {v0, v3}, Lcom/miui/personalassistant/model/SettingItem;->setResListIconId(I)V

    const v3, 0x1b0201c6

    invoke-virtual {v0, v3}, Lcom/miui/personalassistant/model/SettingItem;->setDetailBriefImage(I)V

    :cond_1
    :goto_1
    const-string/jumbo v3, "key_step"

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingItem;->getPrefKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/miui/personalassistant/util/Steps;->supportStepsProvider()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v6}, Lcom/miui/personalassistant/model/SettingItem;->setResIconId(I)V

    invoke-virtual {v0, v9}, Lcom/miui/personalassistant/model/SettingItem;->setResListIconId(I)V

    invoke-virtual {v0, v5}, Lcom/miui/personalassistant/model/SettingItem;->setDetailBriefImage(I)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/miui/personalassistant/stock/utils/StockPrefs;->getColorSchema(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingItem;->getResIconId()I

    move-result v3

    if-eq v3, v7, :cond_1

    invoke-virtual {v0, v7}, Lcom/miui/personalassistant/model/SettingItem;->setResIconId(I)V

    const v3, 0x1b02020b

    invoke-virtual {v0, v3}, Lcom/miui/personalassistant/model/SettingItem;->setResListIconId(I)V

    const v3, 0x1b0201c5

    invoke-virtual {v0, v3}, Lcom/miui/personalassistant/model/SettingItem;->setDetailBriefImage(I)V

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "key_step_type"

    const-string/jumbo v4, ""

    invoke-static {p0, v3, v4}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "com.xiaomi.hm.health"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v6}, Lcom/miui/personalassistant/model/SettingItem;->setResIconId(I)V

    invoke-virtual {v0, v9}, Lcom/miui/personalassistant/model/SettingItem;->setResListIconId(I)V

    invoke-virtual {v0, v5}, Lcom/miui/personalassistant/model/SettingItem;->setDetailBriefImage(I)V

    goto/16 :goto_0

    :cond_4
    const v3, 0x1b0201ee

    invoke-virtual {v0, v3}, Lcom/miui/personalassistant/model/SettingItem;->setResIconId(I)V

    const v3, 0x1b020209

    invoke-virtual {v0, v3}, Lcom/miui/personalassistant/model/SettingItem;->setResListIconId(I)V

    const v3, 0x1b0201c3

    invoke-virtual {v0, v3}, Lcom/miui/personalassistant/model/SettingItem;->setDetailBriefImage(I)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private updateUI()V
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity$4;-><init>(Lcom/miui/personalassistant/ui/CardSettingsActivity;)V

    invoke-static {v0}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clearData(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/miui/personalassistant/config/PALog;->isDebug()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/personalassistant/ui/CardSettingsActivity;->sClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    sget v2, Lcom/miui/personalassistant/ui/CardSettingsActivity;->sClickNum:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/miui/personalassistant/ui/CardSettingsActivity;->sClickNum:I

    sget v2, Lcom/miui/personalassistant/ui/CardSettingsActivity;->sClickNum:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    invoke-static {p0}, Lcom/miui/personalassistant/util/CardStatusUtil;->clearData(Landroid/content/Context;)V

    const/4 v2, 0x0

    sput v2, Lcom/miui/personalassistant/ui/CardSettingsActivity;->sClickNum:I

    :cond_1
    :goto_1
    sput-wide v0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->sClickTime:J

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    sput v2, Lcom/miui/personalassistant/ui/CardSettingsActivity;->sClickNum:I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x1b040036

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "hasLightBgForClock"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "hasLightBgForClock"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity;->mLightBgForClock:Z

    :cond_0
    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->initView()V

    const-string/jumbo v1, "settings_click"

    invoke-static {v1}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->checkShowCTADialog(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onResume()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->updateUI()V

    return-void
.end method
