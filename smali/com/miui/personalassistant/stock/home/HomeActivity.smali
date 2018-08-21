.class public Lcom/miui/personalassistant/stock/home/HomeActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeActivity"


# instance fields
.field private final PKG_STOCK:Ljava/lang/String;

.field private mColorSchema:Landroid/view/View;

.field private mColorSchemaClickListener:Landroid/view/View$OnClickListener;

.field private mColorSchemaText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mLayoutFooter:Landroid/widget/RelativeLayout;

.field private mOnStocksChangeListener:Lcom/miui/personalassistant/stock/utils/StockDataManager$OnStocksChangeListener;

.field private mStockListLayoutContainer:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

.field private mStockRequest:Lcom/miui/personalassistant/request/StockRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "com.tigerbrokers.stock"

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->PKG_STOCK:Ljava/lang/String;

    new-instance v0, Lcom/miui/personalassistant/stock/home/HomeActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/stock/home/HomeActivity$1;-><init>(Lcom/miui/personalassistant/stock/home/HomeActivity;)V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mOnStocksChangeListener:Lcom/miui/personalassistant/stock/utils/StockDataManager$OnStocksChangeListener;

    new-instance v0, Lcom/miui/personalassistant/stock/home/HomeActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/stock/home/HomeActivity$2;-><init>(Lcom/miui/personalassistant/stock/home/HomeActivity;)V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mColorSchemaClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/stock/home/HomeActivity;)Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mStockListLayoutContainer:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/stock/home/HomeActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/stock/home/HomeActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/stock/home/HomeActivity;->clickColorSchema(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/stock/home/HomeActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/stock/home/HomeActivity;->setUserName(Ljava/lang/String;)V

    return-void
.end method

.method private clickColorSchema(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/stock/home/HomeActivity;->updateColorSchema(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/personalassistant/stock/utils/StockPrefs;->setColorSchema(Landroid/content/Context;I)V

    const-string/jumbo v0, "9"

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setUnSync(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getCachedUserId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/personalassistant/util/Util;->getMiuiDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/personalassistant/stock/utils/StockPrefs;->getCacheUserId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initView()V
    .locals 2

    const v0, 0x1b09039e

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/stock/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mStockListLayoutContainer:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mStockListLayoutContainer:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-virtual {v0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->setup()V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mOnStocksChangeListener:Lcom/miui/personalassistant/stock/utils/StockDataManager$OnStocksChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->registerListener(Lcom/miui/personalassistant/stock/utils/StockDataManager$OnStocksChangeListener;)V

    const v0, 0x1b09039f

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/stock/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mColorSchema:Landroid/view/View;

    const v0, 0x1b0903a0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/stock/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mColorSchemaText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mColorSchema:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mColorSchemaClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/utils/StockPrefs;->getColorSchema(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/stock/home/HomeActivity;->updateColorSchema(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/stock/home/HomeActivity;->setupUserId()V

    const v0, 0x1b0903a3

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/stock/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mLayoutFooter:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mLayoutFooter:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setUserName(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/personalassistant/util/Util;->getMiuiDeviceId()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v5, "username"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v4}, Lcom/miui/personalassistant/stock/utils/StockPrefs;->setCacheUserId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mStockListLayoutContainer:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-virtual {v5, v4}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->setUserId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method private setupUserId()V
    .locals 9

    invoke-direct {p0}, Lcom/miui/personalassistant/stock/home/HomeActivity;->getCachedUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mStockListLayoutContainer:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-virtual {v2, v1}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->setUserId(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/miui/personalassistant/util/Util;->getMiuiDeviceId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/miui/personalassistant/request/StockRequest;

    iget-object v3, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "url_imei_type"

    const-string/jumbo v5, "imei"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/personalassistant/request/StockRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mStockRequest:Lcom/miui/personalassistant/request/StockRequest;

    iget-object v2, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mStockRequest:Lcom/miui/personalassistant/request/StockRequest;

    new-instance v3, Lcom/miui/personalassistant/stock/home/HomeActivity$3;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/stock/home/HomeActivity$3;-><init>(Lcom/miui/personalassistant/stock/home/HomeActivity;)V

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/request/StockRequest;->get(Lcom/miui/personalassistant/request/core/IDataStatusChangedListener;)V

    goto :goto_0
.end method

.method private updateColorSchema(I)V
    .locals 2

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mColorSchemaText:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const v0, 0x1b0b035d

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    const v0, 0x1b0b035c

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.tigerbrokers.stock"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.tigerbrokers.stock"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/Util;->openInMarket(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.tigerbrokers.stock"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/Util;->startAppByPackageName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b0903a3
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1b04010f

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/stock/home/HomeActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "settings_set_key_stock"

    invoke-static {v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/stock/home/HomeActivity;->initView()V

    invoke-virtual {p0, p0}, Lcom/miui/personalassistant/stock/home/HomeActivity;->checkShowCTADialog(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->unRegisterListener()V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mStockRequest:Lcom/miui/personalassistant/request/StockRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mStockRequest:Lcom/miui/personalassistant/request/StockRequest;

    invoke-virtual {v0}, Lcom/miui/personalassistant/request/StockRequest;->cancelRequest()V

    iput-object v1, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mStockRequest:Lcom/miui/personalassistant/request/StockRequest;

    :cond_0
    iput-object v1, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/miui/personalassistant/stock/home/HomeActivity;->mOnStocksChangeListener:Lcom/miui/personalassistant/stock/utils/StockDataManager$OnStocksChangeListener;

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onDestroy()V

    return-void
.end method
