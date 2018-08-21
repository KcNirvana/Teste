.class public Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;
.super Landroid/app/Fragment;
.source "ShoppingTabFragment.java"

# interfaces
.implements Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;
.implements Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask$ICallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$HandleTask;
    }
.end annotation


# static fields
.field private static final KEY_ANALYSIS_TOTAL:Ljava/lang/String; = "key_analysis_total"

.field private static final LOAD_PRICE_NUM:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ShoppingTabFragment"


# instance fields
.field private isHandledClipboard:Z

.field public mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

.field private mClipboardAsyncTask:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHeadPasteStub:Landroid/view/ViewStub;

.field private mHeadPasteView:Landroid/widget/RelativeLayout;

.field private mListView:Landroid/widget/ListView;

.field private mLoadfinish:Z

.field private mNodataPanelTip:Landroid/widget/TextView;

.field private mPageNum:I

.field private mPastAddView:Landroid/widget/TextView;

.field private mRecordDao:Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

.field private mRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/shopping/bean/Shopping;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Ljava/util/Timer;

.field private mTotalNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mLoadfinish:Z

    new-instance v0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$4;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)V

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mRecordList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mRecordList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Lcom/miui/personalassistant/shopping/provider/ShoppingDao;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mRecordDao:Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mTotalNum:I

    return v0
.end method

.method static synthetic access$1010(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)I
    .locals 2

    iget v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mTotalNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mTotalNum:I

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Lcom/miui/personalassistant/shopping/bean/Shopping;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->update(Lcom/miui/personalassistant/shopping/bean/Shopping;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->isHandledClipboard:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->isHandledClipboard:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mPageNum:I

    return v0
.end method

.method static synthetic access$308(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)I
    .locals 2

    iget v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mPageNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mPageNum:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mLoadfinish:Z

    return v0
.end method

.method static synthetic access$402(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mLoadfinish:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->updateDataPrice(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->isMiShop(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->getProductIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->parsePrice(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private analysisTotal()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "key_analysis_total"

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v6, v7}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "total_num"

    iget-object v4, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    invoke-virtual {v4}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Shopping"

    const-string/jumbo v4, "shopping_total"

    invoke-static {v3, v4, v2}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v3, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "key_analysis_total"

    invoke-static {v3, v4, v0, v1}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private feedback(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$HandleTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$HandleTask;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private getProductIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const-string/jumbo v3, "\\?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    aget-object v3, v0, v4

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v0, v3

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "ShoppingTabFragment"

    const-string/jumbo v4, "StringIndexOutOfBoundsException"

    invoke-static {v3, v4, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initPatchPrice()V
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$2;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)V

    invoke-static {v0}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isMiShop(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "com.xiaomi.shop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private parsePrice(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string/jumbo v6, "ShoppingTabFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isMiShop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",response price result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string/jumbo v6, "productPrice"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_1

    invoke-virtual {v4, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const-string/jumbo v6, "price"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    const-string/jumbo v6, "price"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "ShoppingTabFragment"

    const-string/jumbo v7, "JSONException"

    invoke-static {v6, v7, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private reqServerParse(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mClipboardAsyncTask:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mClipboardAsyncTask:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

    invoke-direct {v0}, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mClipboardAsyncTask:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mClipboardAsyncTask:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

    invoke-virtual {v0, p0}, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;->setICallBack(Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask$ICallBack;)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mClipboardAsyncTask:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private update(Lcom/miui/personalassistant/shopping/bean/Shopping;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mRecordDao:Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    invoke-virtual {v0, p1}, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;->addRecord(Lcom/miui/personalassistant/shopping/bean/Shopping;)Z

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->updateData()V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mHeadPasteView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mHeadPasteView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "key_shopping_url_last"

    invoke-virtual {p1}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "copy"

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/util/ShoppingUtil;->analysisAdd(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/util/ClipUtil;->clearClipboard(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method private updateDataPrice(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/shopping/bean/Shopping;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mTotalNum:I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/shopping/bean/Shopping;

    new-instance v2, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$3;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;Lcom/miui/personalassistant/shopping/bean/Shopping;)V

    invoke-static {v2}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/shopping/bean/Shopping;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->delete(Ljava/util/List;)V

    return-void
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/personalassistant/favorite/request/HttpRequest;

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/favorite/request/HttpRequest;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/miui/personalassistant/favorite/request/HttpRequest;->reqParseServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public modifyData(Lcom/miui/personalassistant/shopping/bean/Shopping;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mRecordDao:Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    invoke-virtual {p1}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v1, v2, p2}, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;->updateFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->isEditing:Z

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mRecordDao:Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    new-instance v0, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "main"

    invoke-direct {v0, v1, p0, v2}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;-><init>(Landroid/content/Context;Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->initPatchPrice()V

    invoke-direct {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->analysisTotal()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const v1, 0x1b040109

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b09023c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mNodataPanelTip:Landroid/widget/TextView;

    const v1, 0x1b0900ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onItemLongClick(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-virtual {v0, p0, p1}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->onItemLongClick(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;I)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "ShoppingTabFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "server value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/miui/personalassistant/shopping/util/ValueUtil;->parseRecord(Ljava/lang/String;)Lcom/miui/personalassistant/shopping/bean/Shopping;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->isHandledClipboard:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mRecordDao:Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    invoke-virtual {v0}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getOriginUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;->updateRecordByUrl(Ljava/lang/String;Lcom/miui/personalassistant/shopping/bean/Shopping;)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    :cond_0
    :goto_0
    const-string/jumbo v1, "ShoppingTabFragment"

    const-string/jumbo v2, "--end--"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->isHandledClipboard:Z

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->update(Lcom/miui/personalassistant/shopping/bean/Shopping;)V

    goto :goto_0
.end method

.method public onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mPastAddView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mPastAddView:Landroid/widget/TextView;

    const v1, 0x1b0b01e0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mPastAddView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->isHandledClipboard:Z

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/shopping/util/ShoppingUtil;->isDeletingAll(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->updateUIToTip(Z)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->updateData()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method

.method public updateData()V
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment$1;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;)V

    invoke-static {v0}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateMenu(Z)V
    .locals 3

    iget-object v2, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    invoke-virtual {v2}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->getCheckedData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-virtual {v2, v0, v1, p1}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->updateMenu(IIZ)V

    return-void
.end method

.method public updateUIToTip(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mNodataPanelTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mNodataPanelTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
