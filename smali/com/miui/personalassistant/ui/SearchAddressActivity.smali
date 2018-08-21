.class public Lcom/miui/personalassistant/ui/SearchAddressActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "SearchAddressActivity.java"

# interfaces
.implements Lcom/autonavi/its/protocol/ReqCallback;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/miui/personalassistant/ui/adapter/BaseListAdapter$ListItemCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/SearchAddressActivity$AutoNaviCallBack;,
        Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;,
        Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;,
        Lcom/miui/personalassistant/ui/SearchAddressActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final GET_CITY_CODE:I = 0x2

.field private static final LOCATION_EXPIRED_TIME:J = 0x1d4c0L

.field public static final OPTION_HOME:Ljava/lang/String; = "option_home"

.field public static final OPTION_SCHOOL:Ljava/lang/String; = "option_school"

.field private static final REQUEST_CITY_NAME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SearchAddressActivity"


# instance fields
.field private PREF_FILE_NAME:Ljava/lang/String;

.field private cityCode:Ljava/lang/String;

.field private cityName:Ljava/lang/String;

.field private doRequestTime:J

.field private isLocationed:Z

.field private mAdapter:Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;

.field private mCityCodeLoaderCallBack:Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;

.field private mCityView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mEdtKeyword:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mNaviCallBack:Lcom/miui/personalassistant/ui/SearchAddressActivity$AutoNaviCallBack;

.field private mNodataPanel:Landroid/widget/LinearLayout;

.field private mNonetPanel:Landroid/widget/LinearLayout;

.field protected mRequestLoader:Lcom/miui/personalassistant/loader/RequestLoader;

.field private mResetReqBtn:Landroid/widget/TextView;

.field mRunnable:Ljava/lang/Runnable;

.field private mSearchPanel:Landroid/widget/LinearLayout;

.field private mSearchTip:Landroid/widget/TextView;

.field private mWord:Ljava/lang/String;

.field private networkAvaiable:Z

.field private permission:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->cityCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->cityName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->networkAvaiable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->isLocationed:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->doRequestTime:J

    new-instance v0, Lcom/miui/personalassistant/ui/SearchAddressActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity$1;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/personalassistant/ui/SearchAddressActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity$6;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mCityCodeLoaderCallBack:Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/ui/SearchAddressActivity;Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;)Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mCityCodeLoaderCallBack:Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/personalassistant/ui/SearchAddressActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->getSuggestion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/personalassistant/ui/SearchAddressActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->doRequestTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->networkAvaiable:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->showNetworkPanel()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/miui/personalassistant/ui/SearchAddressActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->cityCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Lcom/miui/personalassistant/request/core/HttpRequest;
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->getCityCodeRequest()Lcom/miui/personalassistant/request/core/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->isUpdate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mCityView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Lcom/miui/personalassistant/ui/SearchAddressActivity$AutoNaviCallBack;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNaviCallBack:Lcom/miui/personalassistant/ui/SearchAddressActivity$AutoNaviCallBack;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->permission:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/personalassistant/ui/SearchAddressActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->cityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->resetReqSearch()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mEdtKeyword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNonetPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNodataPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchTip:Landroid/widget/TextView;

    return-object v0
.end method

.method private doLocationRequest()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->isLocationExpired()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/personalassistant/ui/SearchAddressActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity$7;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V

    invoke-static {v0}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getCityCodeRequest()Lcom/miui/personalassistant/request/core/HttpRequest;
    .locals 3

    new-instance v0, Lcom/miui/personalassistant/request/core/HttpRequest;

    invoke-static {}, Lcom/miui/personalassistant/utils/InternalHostManager;->getCityCodeUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/personalassistant/request/core/HttpRequest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method private getLastLocationUpdateTime()J
    .locals 4

    const-string/jumbo v0, "pref_last_navi_location_update_time"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/miui/personalassistant/util/Preference;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSuggestion(Ljava/lang/String;)V
    .locals 8

    iput-object p1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mWord:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->networkAvaiable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->cityCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->doLocationRequest()V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mAdapter:Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->getData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mAdapter:Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    :try_start_0
    const-string/jumbo v0, "lbs.amap.com.normal"

    invoke-static {v0}, Lcom/autonavi/its/protocol/RequestManager;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->cityCode:Ljava/lang/String;

    const/4 v4, 0x1

    const/16 v5, 0x14

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->doRequest(Lcom/autonavi/its/protocol/ReqCallback;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->doRequestTime:J

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v0, "SearchAddressActivity"

    const-string/jumbo v2, "ReqKeywordSearch"

    invoke-static {v0, v2, v7}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private hideInputMethod()V
    .locals 3

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mEdtKeyword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    const v1, 0x1b090354

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNonetPanel:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    const v1, 0x1b090358

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v1, 0x1b090308

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNonetPanel:Landroid/widget/LinearLayout;

    :cond_1
    const v1, 0x1b090357

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNodataPanel:Landroid/widget/LinearLayout;

    const v1, 0x1b090352

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchTip:Landroid/widget/TextView;

    const v1, 0x1b0902de

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mResetReqBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mResetReqBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/miui/personalassistant/ui/SearchAddressActivity$2;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity$2;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x1b090359

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mCityView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mCityView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->cityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mCityView:Landroid/widget/TextView;

    new-instance v2, Lcom/miui/personalassistant/ui/SearchAddressActivity$3;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity$3;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x1b09035a

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mEdtKeyword:Landroid/widget/EditText;

    const v1, 0x1b090112

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p0, v2, p0}, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/personalassistant/ui/adapter/BaseListAdapter$ListItemCreator;)V

    iput-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mAdapter:Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mAdapter:Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v1, 0x1b09035b

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/miui/personalassistant/ui/SearchAddressActivity$4;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity$4;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mEdtKeyword:Landroid/widget/EditText;

    new-instance v2, Lcom/miui/personalassistant/ui/SearchAddressActivity$5;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity$5;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private isLocationExpired()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->getLastLocationUpdateTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1d4c0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "key_city_name"

    const-string/jumbo v4, ""

    invoke-static {p0, v3, v4}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->cityName:Ljava/lang/String;

    const-string/jumbo v3, "key_city_code"

    const-string/jumbo v4, ""

    invoke-static {p0, v3, v4}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->cityCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->cityName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->cityCode:Ljava/lang/String;

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

.method private isUpdate()Z
    .locals 2

    const-string/jumbo v0, "city_name_selected"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private onCityNameSelected(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "result_backend_data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "city_name_selected"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mCityView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-direct {v2}, Lcom/miui/personalassistant/loader/RequestLoader;-><init>()V

    iput-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mRequestLoader:Lcom/miui/personalassistant/loader/RequestLoader;

    new-instance v2, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;

    invoke-direct {v2, p0, v4}, Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;Lcom/miui/personalassistant/ui/SearchAddressActivity$1;)V

    iput-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mCityCodeLoaderCallBack:Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mRequestLoader:Lcom/miui/personalassistant/loader/RequestLoader;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mCityCodeLoaderCallBack:Lcom/miui/personalassistant/ui/SearchAddressActivity$CityCodeLoaderCallBack;

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/loader/RequestLoader;->setLoaderCallBack(Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->getCityCodeRequest()Lcom/miui/personalassistant/request/core/HttpRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "city"

    invoke-virtual {v1, v2, v0}, Lcom/miui/personalassistant/request/core/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mRequestLoader:Lcom/miui/personalassistant/loader/RequestLoader;

    new-instance v3, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;

    invoke-direct {v3, p0, v4}, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;Lcom/miui/personalassistant/ui/SearchAddressActivity$1;)V

    invoke-virtual {v2, v1, v3}, Lcom/miui/personalassistant/loader/RequestLoader;->request(Lcom/miui/personalassistant/request/core/BaseRequest;Lcom/miui/personalassistant/request/core/BaseResult;)V

    goto :goto_0
.end method

.method private onSuggestionGot(Ljava/util/List;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNonetPanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNonetPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNodataPanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNodataPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mAdapter:Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mWord:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mAdapter:Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_3
    invoke-interface {v0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchPanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNodataPanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNodataPanel:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private pickWord(Lcom/miui/personalassistant/model/AddressInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "pick_word"

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/AddressInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "latitude"

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/AddressInfo;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "longitude"

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/AddressInfo;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "address"

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/AddressInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "key_city_name"

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/AddressInfo;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->cityName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->saveCityName(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->hideInputMethod()V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->finish()V

    return-void
.end method

.method private resetReqSearch()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mWord:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->cityCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNonetPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNonetPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mWord:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->getSuggestion(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mEdtKeyword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->findFocus()Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->doLocationRequest()V

    goto :goto_0
.end method

.method private saveCityName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->PREF_FILE_NAME:Ljava/lang/String;

    const-string/jumbo v1, "option_home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "city_home"

    const-string/jumbo v1, "key_encrypt_assi"

    invoke-static {p0, v0, p1, v1}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->PREF_FILE_NAME:Ljava/lang/String;

    const-string/jumbo v1, "option_school"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "city_school"

    const-string/jumbo v1, "key_encrypt_assi"

    invoke-static {p0, v0, p1, v1}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showNetworkPanel()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNodataPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNodataPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchTip:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNonetPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mAdapter:Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mAdapter:Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNonetPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/personalassistant/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "SearchAddressActivity"

    const-string/jumbo v1, "Unknown request code!"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->isLocationed:Z

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->onCityNameSelected(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onBindItemView(ILjava/lang/Object;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/ui/SearchAddressActivity$ViewHolder;

    move-object v0, p2

    check-cast v0, Lcom/miui/personalassistant/model/AddressInfo;

    iget-object v2, v1, Lcom/miui/personalassistant/ui/SearchAddressActivity$ViewHolder;->word:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/AddressInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/miui/personalassistant/ui/SearchAddressActivity$ViewHolder;->address:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/AddressInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x1b0400ee

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "option"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->PREF_FILE_NAME:Ljava/lang/String;

    const-string/jumbo v3, "permission_location"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->permission:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/miui/personalassistant/ui/SearchAddressActivity$AutoNaviCallBack;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity$AutoNaviCallBack;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V

    iput-object v3, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNaviCallBack:Lcom/miui/personalassistant/ui/SearchAddressActivity$AutoNaviCallBack;

    invoke-static {p0}, Lcom/miui/personalassistant/util/Util;->ensureCtaInited(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->doLocationRequest()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->initView()V

    return-void
.end method

.method public onCreateItemView(ILandroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4

    const v2, 0x1b0400a6

    const/4 v3, 0x0

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/personalassistant/ui/SearchAddressActivity$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/personalassistant/ui/SearchAddressActivity$ViewHolder;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;Lcom/miui/personalassistant/ui/SearchAddressActivity$1;)V

    const v2, 0x1b090290

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/personalassistant/ui/SearchAddressActivity$ViewHolder;->word:Landroid/widget/TextView;

    const v2, 0x1b090291

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/personalassistant/ui/SearchAddressActivity$ViewHolder;->address:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->isUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pref_last_navi_location_update_time"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->setLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onFail(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->showNetworkPanel()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mAdapter:Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;

    invoke-virtual {v1, p3}, Lcom/miui/personalassistant/ui/adapter/BaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/AddressInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->pickWord(Lcom/miui/personalassistant/model/AddressInfo;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->pickWord(Lcom/miui/personalassistant/model/AddressInfo;)V

    goto :goto_0
.end method

.method public onNetError(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->showNetworkPanel()V

    return-void
.end method

.method protected onNetworkConnected(Z)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onNetworkConnected(Z)V

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->networkAvaiable:Z

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->cityCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->doLocationRequest()V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchTip:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNonetPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNonetPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNodataPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNodataPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mWord:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mWord:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->getSuggestion(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    iput-boolean v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->networkAvaiable:Z

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNonetPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNonetPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNodataPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mNodataPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchTip:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchTip:Landroid/widget/TextView;

    const v1, 0x1b0b02ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStart(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/autonavi/its/protocol/BaseRequest;)V
    .locals 10

    :try_start_0
    const-string/jumbo v8, "ReqKeywordSearch"

    invoke-virtual {p1}, Lcom/autonavi/its/protocol/BaseRequest;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->showNetworkPanel()V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->getPoiList()Ljava/util/List;

    move-result-object v6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    new-instance v3, Lcom/miui/personalassistant/model/AddressInfo;

    invoke-direct {v3}, Lcom/miui/personalassistant/model/AddressInfo;-><init>()V

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autonavi/its/protocol/model/POI;

    invoke-virtual {v8}, Lcom/autonavi/its/protocol/model/POI;->getCityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/miui/personalassistant/model/AddressInfo;->setCity(Ljava/lang/String;)V

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autonavi/its/protocol/model/POI;

    invoke-virtual {v8}, Lcom/autonavi/its/protocol/model/POI;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/miui/personalassistant/model/AddressInfo;->setName(Ljava/lang/String;)V

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autonavi/its/protocol/model/POI;

    invoke-virtual {v8}, Lcom/autonavi/its/protocol/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/miui/personalassistant/model/AddressInfo;->setAddress(Ljava/lang/String;)V

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autonavi/its/protocol/model/POI;

    invoke-virtual {v8}, Lcom/autonavi/its/protocol/model/POI;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/miui/personalassistant/model/AddressInfo;->setLatitude(Ljava/lang/String;)V

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autonavi/its/protocol/model/POI;

    invoke-virtual {v8}, Lcom/autonavi/its/protocol/model/POI;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/miui/personalassistant/model/AddressInfo;->setLongitude(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v8, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mSearchTip:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity;->mListView:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->onSuggestionGot(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v8, "SearchAddressActivity"

    const-string/jumbo v9, "ReqKeywordSearch on success"

    invoke-static {v8, v9, v4}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
