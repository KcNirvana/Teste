.class public Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;
.super Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;
.source "CityPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;,
        Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;,
        Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;,
        Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;
    }
.end annotation


# static fields
.field private static final CITY_LIST_LOADER:I = 0x0

.field private static final GET_CITY_CODE:I = 0x2

.field private static final GET_CITY_ERROR:I = 0x1

.field private static final LOCATION_EXPIRED_TIME:J = 0x1d4c0L

.field public static final PICK_TARGET:Ljava/lang/String; = "TARGET_CITY"

.field private static final REQUEST_CITY_LIST:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CityPickerFragment"


# instance fields
.field private mCityListLoader:Lcom/miui/personalassistant/loader/BaseLoader;

.field private mCityListLoaderCallBack:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;

.field private mCityListReady:Z

.field protected mCityListResult:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;

.field private mCityViewAdded:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentlyLocatedCityContent:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIdToName:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIdToShortName:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocatedCityName:Ljava/lang/String;

.field private mLocatedCityNameTextView:Landroid/widget/TextView;

.field private mLocatedCityView:Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;

.field private mNaviCallBack:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;

.field private mProgress:Lcom/miui/personalassistant/ui/widget/AnimatedImageView;

.field private mProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mIdToShortName:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mIdToName:Landroid/util/LongSparseArray;

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$1;-><init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/util/LongSparseArray;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mIdToShortName:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/util/LongSparseArray;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mIdToName:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mSearchBox:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lmiui/widget/AlphabetFastIndexer;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mFastIndexer:Lmiui/widget/AlphabetFastIndexer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mAdapter:Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lmiui/widget/AlphabetFastIndexer;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mFastIndexer:Lmiui/widget/AlphabetFastIndexer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mAdapter:Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/widget/AnimatedImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mProgress:Lcom/miui/personalassistant/ui/widget/AnimatedImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->getMatchCityName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mAdapter:Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mAdapter:Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/loader/BaseLoader;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCityListLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Lcom/miui/personalassistant/loader/BaseLoader;)Lcom/miui/personalassistant/loader/BaseLoader;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCityListLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCityListLoaderCallBack:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/request/core/BaseRequest;
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->getCityListRequest()Lcom/miui/personalassistant/request/core/BaseRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2702(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCityListReady:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/widget/LoadingProgressView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mAdapter:Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mAdapter:Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->getNameById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mLocatedCityName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mLocatedCityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mLocatedCityNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mLocatedCityView:Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mNaviCallBack:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->returnActivityResult(Ljava/lang/String;)V

    return-void
.end method

.method private doLocationRequest()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->isLocationExpired()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$2;-><init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)V

    invoke-static {v0}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getCityListRequest()Lcom/miui/personalassistant/request/core/BaseRequest;
    .locals 4

    new-instance v0, Lcom/miui/personalassistant/request/core/HttpRequest;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/personalassistant/utils/InternalHostManager;->getCityListUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/request/core/HttpRequest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method private getCityNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mIdToShortName:Landroid/util/LongSparseArray;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLastLocationUpdateTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_last_navi_location_update_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getMatchCityName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCityListResult:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;

    iget-object v0, v2, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->cityNameList:Ljava/util/ArrayList;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCityListResult:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;

    iget-object v2, v2, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->cityNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mIdToName:Landroid/util/LongSparseArray;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLocationExpired()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->getLastLocationUpdateTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1d4c0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "key_city_name"

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mLocatedCityName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mLocatedCityName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method private returnActivityResult(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "result_backend_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected getItem(I)Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;
    .locals 1

    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->getItem(I)Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;

    move-result-object v0

    return-object v0
.end method

.method protected getListViewItemOnClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$6;-><init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)V

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;-><init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mNaviCallBack:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b04006e

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mLocatedCityView:Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mLocatedCityView:Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;

    invoke-virtual {v1, v3}, Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;->setSelectable(Z)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mLocatedCityView:Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;

    const v2, 0x1b0901e6

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mLocatedCityNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mLocatedCityView:Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;

    const v2, 0x1b0900a3

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCurrentlyLocatedCityContent:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCurrentlyLocatedCityContent:Landroid/view/View;

    new-instance v2, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$3;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$3;-><init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mLocatedCityView:Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;

    const v2, 0x1b0901e7

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mProgress:Lcom/miui/personalassistant/ui/widget/AnimatedImageView;

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->doLocationRequest()V

    const v1, 0x1b09035b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$4;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$4;-><init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x1b09035a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mSearchBox:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mSearchBox:Landroid/widget/EditText;

    new-instance v2, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$5;-><init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v1, 0x1b0901f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    const v2, 0x1b0b02c8

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->setEmptyText(I)V

    new-instance v1, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;

    invoke-direct {v1, p0, v4}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;-><init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$1;)V

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCityListLoaderCallBack:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCityListLoaderCallBack:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->onDestroy()V

    return-void
.end method

.method protected onNetworkConnected()V
    .locals 1

    invoke-super {p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->onNetworkConnected()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCityListLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCityListLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-virtual {v0}, Lcom/miui/personalassistant/loader/BaseLoader;->reload()V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mRequestLoader:Lcom/miui/personalassistant/loader/RequestLoader;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->doLocationRequest()V

    :cond_1
    return-void
.end method

.method protected setupListView(Landroid/view/View;)V
    .locals 4

    const-string/jumbo v0, "CityPickerFragment"

    const-string/jumbo v1, "setupListView"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCityViewAdded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mLocatedCityView:Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCityViewAdded:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->setupListView(Landroid/view/View;)V

    return-void
.end method

.method protected setupPickerUi(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCityListReady:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->setupPickerUi(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
