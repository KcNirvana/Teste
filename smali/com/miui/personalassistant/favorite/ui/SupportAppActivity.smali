.class public Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "SupportAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$MySupportAppAdapter;,
        Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;
    }
.end annotation


# static fields
.field private static final APP_All_LIST:Ljava/lang/String; = "app_all_list"

.field private static final APP_SUPPORT_REQ_INTERVAL:J = 0x5265c00L

.field private static final APP_SUPPORT_REQ_TIMESTAMP:Ljava/lang/String; = "app_support_req_timestamp"

.field private static final APP_SUPPORT_TIMESTAMP:Ljava/lang/String; = "app_support_timestamp"

.field public static final FAV_SUPPORT_PREF:Ljava/lang/String; = "catcher_"

.field private static final TAG:Ljava/lang/String; = "SupportAppActivity"


# instance fields
.field private mAllList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/SupportApp;",
            ">;"
        }
    .end annotation
.end field

.field private mReqTask:Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;

.field private mSupportAllAdapter:Lcom/miui/personalassistant/favorite/adapter/SupportAllAdapter;

.field private mSupportAllGridView:Lcom/miui/personalassistant/favorite/ui/widget/ScrollableGridView;

.field private mSupportAppAdapter:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

.field private mSupportGridView:Lcom/miui/personalassistant/favorite/ui/widget/ScrollableGridView;

.field private mSupportNotAppAdapter:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

.field private mSupportNotGridView:Lcom/miui/personalassistant/favorite/ui/widget/ScrollableGridView;

.field private mSupportNotlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/SupportApp;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/SupportApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->updateReqData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->updateAdapter()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;Lcom/miui/personalassistant/favorite/module/SupportApp;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->setSupportApp(Lcom/miui/personalassistant/favorite/module/SupportApp;Z)V

    return-void
.end method

.method private initData()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mAllList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportlist:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportNotlist:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mAllList:Ljava/util/List;

    new-instance v0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

    new-instance v1, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$MySupportAppAdapter;

    invoke-direct {v1, p0, v3}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$MySupportAppAdapter;-><init>(Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$1;)V

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;-><init>(Landroid/content/Context;Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$OnClickListener;Z)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportAppAdapter:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportGridView:Lcom/miui/personalassistant/favorite/ui/widget/ScrollableGridView;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportAppAdapter:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/widget/ScrollableGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

    new-instance v1, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$MySupportAppAdapter;

    invoke-direct {v1, p0, v3}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$MySupportAppAdapter;-><init>(Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$1;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;-><init>(Landroid/content/Context;Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$OnClickListener;Z)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportNotAppAdapter:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportNotGridView:Lcom/miui/personalassistant/favorite/ui/widget/ScrollableGridView;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportNotAppAdapter:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/widget/ScrollableGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/miui/personalassistant/favorite/adapter/SupportAllAdapter;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/favorite/adapter/SupportAllAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportAllAdapter:Lcom/miui/personalassistant/favorite/adapter/SupportAllAdapter;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportAllGridView:Lcom/miui/personalassistant/favorite/ui/widget/ScrollableGridView;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportAllAdapter:Lcom/miui/personalassistant/favorite/adapter/SupportAllAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/widget/ScrollableGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x1b090231

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/favorite/ui/widget/ScrollableGridView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportGridView:Lcom/miui/personalassistant/favorite/ui/widget/ScrollableGridView;

    const v0, 0x1b090232

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/favorite/ui/widget/ScrollableGridView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportNotGridView:Lcom/miui/personalassistant/favorite/ui/widget/ScrollableGridView;

    const v0, 0x1b090233

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/favorite/ui/widget/ScrollableGridView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportAllGridView:Lcom/miui/personalassistant/favorite/ui/widget/ScrollableGridView;

    return-void
.end method

.method private isSupportFavSettings(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "catcher_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSupportApp(Lcom/miui/personalassistant/favorite/module/SupportApp;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportAppAdapter:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportNotlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportNotAppAdapter:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportNotlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->setData(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "catcher_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/personalassistant/favorite/module/SupportApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportAppAdapter:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportNotlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportNotAppAdapter:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportNotlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->setData(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "catcher_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/personalassistant/favorite/module/SupportApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private setSupportPref()V
    .locals 2

    const-string/jumbo v0, "app_all_list"

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mAllList:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateAdapter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportAppAdapter:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportNotAppAdapter:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportNotlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportAllAdapter:Lcom/miui/personalassistant/favorite/adapter/SupportAllAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mAllList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/adapter/SupportAllAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method private updateNativeData(Ljava/lang/String;)V
    .locals 4

    const-class v2, Lcom/miui/personalassistant/favorite/module/SupportApp;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mAllList:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mAllList:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mAllList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/favorite/module/SupportApp;

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/module/SupportApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->isSupportFavSettings(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportlist:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportNotlist:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateReqData(Ljava/lang/String;)V
    .locals 10

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_5

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v5, Lcom/miui/personalassistant/favorite/module/SupportApp;

    invoke-direct {v5}, Lcom/miui/personalassistant/favorite/module/SupportApp;-><init>()V

    const-string/jumbo v6, "appName"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, ""

    :goto_1
    invoke-virtual {v5, v6}, Lcom/miui/personalassistant/favorite/module/SupportApp;->setAppName(Ljava/lang/String;)V

    const-string/jumbo v6, "logoUrl"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, ""

    :goto_2
    invoke-virtual {v5, v6}, Lcom/miui/personalassistant/favorite/module/SupportApp;->setLogoUrl(Ljava/lang/String;)V

    const-string/jumbo v6, "packageName"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v4, ""

    :goto_3
    invoke-virtual {v5, v4}, Lcom/miui/personalassistant/favorite/module/SupportApp;->setPackageName(Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/miui/personalassistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v4}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->isSupportFavSettings(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportlist:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_4
    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mAllList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "appName"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    const-string/jumbo v6, "logoUrl"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    const-string/jumbo v6, "packageName"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportNotlist:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string/jumbo v6, "SupportAppActivity"

    const-string/jumbo v7, "JSONException "

    invoke-static {v6, v7, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void

    :cond_5
    :try_start_1
    const-string/jumbo v6, "app_support_req_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {p0, v6, v8, v9}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->setSupportPref()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method private updateUI()V
    .locals 6

    const-string/jumbo v1, "app_all_list"

    const-string/jumbo v2, ""

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "app_support_req_timestamp"

    const-wide/16 v4, 0x0

    invoke-static {p0, v1, v4, v5}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mReqTask:Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mReqTask:Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;->cancel(Z)Z

    :cond_1
    new-instance v1, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;-><init>(Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;)V

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mReqTask:Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mReqTask:Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->updateNativeData(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->updateAdapter()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1b04008b

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mReqTask:Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mReqTask:Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mReqTask:Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;

    :cond_0
    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mSupportNotlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->mAllList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->updateUI()V

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onStart()V

    return-void
.end method
