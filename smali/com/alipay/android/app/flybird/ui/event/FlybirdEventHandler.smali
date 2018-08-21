.class public Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;
.super Ljava/lang/Object;
.source "FlybirdEventHandler.java"


# static fields
.field private static final ACTION_LOC_BACK:Ljava/lang/String; = "{\"action\":{\"name\":\"loc:back\"}}"

.field private static final STATUS0002:Ljava/lang/String; = "{\"status\":\"0002\"}"

.field private static final STATUS0003:Ljava/lang/String; = "{\"status\":\"0003\"}"

.field private static final STATUS0004:Ljava/lang/String; = "{\"status\":\"0004\"}"

.field private static final STATUS0005:Ljava/lang/String; = "{\"status\":\"0005\"}"

.field private static final STATUS0009:Ljava/lang/String; = "{\"status\":\"0009\"}"

.field private static fpResultReceiver:Landroid/content/BroadcastReceiver;

.field private static fpStatusReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private blReceiver:Landroid/content/BroadcastReceiver;

.field private dialog:Lcom/alipay/android/app/hardwarepay/base/d;

.field private fpSensorStatus:Z

.field private isNewMode:Z

.field private mBizId:I

.field private mContext:Landroid/content/Context;

.field private mFBEventListener:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

.field private mLastRequestTime:J

.field private mSmsBean:Lcom/alipay/android/app/ui/quickpay/util/e;

.field private mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

.field private retryTime:I


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;ILandroid/content/Context;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mLastRequestTime:J

    iput v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->retryTime:I

    iput-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->fpSensorStatus:Z

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput p2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mFBEventListener:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->isNewMode:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->blReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->processEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Landroid/app/Activity;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->showFlybirdDialog(Landroid/app/Activity;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    return v0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->showPrePageLoading()V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->fpSensorStatus:Z

    return v0
.end method

.method static synthetic access$602(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->fpSensorStatus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    return-object v0
.end method

.method static synthetic access$702(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/hardwarepay/base/d;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    return-object p1
.end method

.method static synthetic access$800(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->retryTime:I

    return v0
.end method

.method static synthetic access$802(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->retryTime:I

    return p1
.end method

.method static synthetic access$808(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)I
    .locals 2

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->retryTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->retryTime:I

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->statusWithTip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkLocalFingerprintStatus(Ljava/lang/String;ZZ)Z
    .locals 1

    if-nez p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/alipay/android/app/g/d;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private checkLoginStatus()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$5;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$5;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private filterLocalEvent(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo v0, "/forward/setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getCurrentIFormShower()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->dismissLoading()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->createLocalViewContainer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v1, "ex"

    const-string/jumbo v2, "filterLocalEvent"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleBLAuthResponseReceiver([Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;ZLcom/alipay/android/app/json/JSONObject;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v3, 0x5

    const/4 v9, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "flybird_bl_val_ok"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    array-length v1, p1

    if-le v1, v3, :cond_0

    aget-object v5, p1, v3

    :goto_0
    const-string/jumbo v1, "phonecashier#bracelet"

    const-string/jumbo v2, "FlybirdEventHandler.handleBLAuthResponseReceiver"

    const-string/jumbo v3, "FlybirdWindowManager\u53d1\u8d77\u652f\u4ed8\u624b\u73af\u6821\u9a8c\u8bf7\u6c42"

    invoke-static {v9, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v7

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    const-string/jumbo v2, "phonecashier#bracelet"

    const-string/jumbo v3, "FlybirdEventHandler.handleBLAuthResponseReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "actionParams"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, p1, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move-object v5, v0

    goto :goto_0

    :cond_1
    iput v7, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->retryTime:I

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getCurrentIFormShower()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->blReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->blReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;

    move-object v1, p0

    move v2, p3

    move-object v4, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$9;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;ZLcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;[Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->blReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p3, :cond_3

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    invoke-direct {v1, p0, v3, v8}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "bracelet_authenticate_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->blReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p2, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private handleEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Ljava/lang/String;)Z
    .locals 15

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getCurrentIFormShower()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v6

    const-string/jumbo v2, "click"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->getmAction()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-static {v0, v2, v3}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Continue:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Log:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/alipay/android/app/statistic/e/a;->a()Lcom/alipay/android/app/statistic/e/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/statistic/e/a;->a(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$12;->$SwitchMap$com$alipay$android$app$flybird$ui$event$FlybirdActionType$Type:[I

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getmLogFieldEndCode()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/alipay/android/app/statistic/h;->a(I)V

    :cond_3
    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->putFpOpenField(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->putFpPayField(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    :cond_4
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    invoke-static {v2}, Lcom/alipay/android/app/statistic/a/a;->a(I)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getCurrentIFormShower()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->addMaskView()V

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->popTopWindowFrame()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/alipay/android/app/b/e/a;->a()Lcom/alipay/android/app/ui/a/a/a;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/a/a/a;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "ex"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :pswitch_3
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mLastRequestTime:J

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :try_start_1
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionData()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "param"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "params"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    const-string/jumbo v4, "param"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "param"

    :goto_2
    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    :cond_7
    const-string/jumbo v4, "action"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "action"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "params"

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "params"

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/android/app/g/c;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    :cond_8
    const-string/jumbo v4, "action"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, ""

    const-string/jumbo v5, "pwd"

    invoke-virtual {v3, v5}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string/jumbo v4, "pwd"

    move-object v5, v4

    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    const-string/jumbo v7, "KeyIsByPwd"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcom/alipay/android/app/statistic/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    invoke-static {v4}, Lcom/alipay/android/app/b/e/a;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v3, v5}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_9
    invoke-virtual {v3, v5, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/b/e/a;->a()Lcom/alipay/android/app/ui/a/a/a;

    move-result-object v4

    if-eqz v4, :cond_a

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/ui/a/a/a;->b(I)V
    :try_end_1
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_4
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v4

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/ui/quickpay/util/h;->a(I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/h;->b(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/ui/quickpay/util/h;->a(IZ)V

    goto/16 :goto_1

    :cond_b
    :try_start_2
    const-string/jumbo v4, "params"

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v5, "spwd"

    invoke-virtual {v3, v5}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    const-string/jumbo v4, "spwd"
    :try_end_2
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v5, v4

    goto :goto_3

    :catch_1
    move-exception v2

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    goto :goto_4

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->ismIsFromLocalEvent()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->filterLocalEvent(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_e
    const-string/jumbo v4, "l2rmode"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string/jumbo v4, "l2rmode"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->setAnimMode(I)V

    :cond_f
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->isAjax()Z

    move-result v5

    if-nez v5, :cond_11

    if-eqz v4, :cond_11

    const-string/jumbo v5, "{\"action\":{\"name\":\"/setting/save\"}}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    if-eqz v6, :cond_2

    const-string/jumbo v4, "loadtxt"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v4, "loadtxt"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v5, v7

    invoke-virtual {v6, v5}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showLoading([Ljava/lang/String;)V

    :cond_10
    :goto_5
    invoke-virtual {v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->addMaskView()V

    :cond_11
    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/sys/b;->a(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getNetErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alipay/android/app/ui/quickpay/util/h;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/ui/quickpay/util/h;->a(Z)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/ui/quickpay/util/h;->a(Lcom/alipay/android/app/json/JSONObject;)V

    new-instance v4, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v4}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    iput v5, v4, Lcom/alipay/android/app/b/a/j;->a:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    iput-object v5, v4, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    const/16 v2, 0xb

    iput v2, v4, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v2, 0x7d3

    iput v2, v4, Lcom/alipay/android/app/b/a/j;->c:I

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    goto/16 :goto_1

    :cond_12
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showLoading([Ljava/lang/String;)V

    goto :goto_5

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionParams()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_3
    array-length v2, v3

    if-lez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionData()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v6, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->isNewMode:Z

    const-string/jumbo v2, "param"

    invoke-virtual {v6, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string/jumbo v2, "param"

    invoke-virtual {v6, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "nativeValidate"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string/jumbo v4, "nativeValidate"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    :cond_13
    const-string/jumbo v4, "newMode"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string/jumbo v4, "newMode"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->isNewMode:Z

    :cond_14
    const/4 v2, 0x0

    aget-object v2, v3, v2

    const-string/jumbo v4, "fp"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x2

    aget-object v2, v3, v2

    const-string/jumbo v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    invoke-virtual {v4, v5, v8, v9, v2}, Lcom/alipay/android/app/hardwarepay/c;->a(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTemplateContentData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    const/4 v2, 0x0

    if-eqz v4, :cond_16

    const-string/jumbo v8, "fpProtocolType"

    invoke-virtual {v4, v8}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    const-string/jumbo v2, "fpProtocolType"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    const/4 v2, 0x1

    :goto_6
    move v8, v2

    :goto_7
    invoke-virtual/range {p3 .. p3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v8, v7}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->checkLocalFingerprintStatus(Ljava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_18

    const-string/jumbo v2, "fp"

    sget-object v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v4, "{\"status\":\"0004\"}"

    invoke-virtual {p0, v2, v3, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->executeEvent(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v2

    invoke-static {v2}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_15
    const/4 v2, 0x0

    goto :goto_6

    :cond_16
    :try_start_4
    const-string/jumbo v4, "fpProtocolType"

    invoke-virtual {v6, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    const-string/jumbo v2, "fpProtocolType"

    invoke-virtual {v6, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_17

    const/4 v2, 0x1

    :goto_8
    move v8, v2

    goto :goto_7

    :cond_17
    const/4 v2, 0x0

    goto :goto_8

    :cond_18
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "param"

    invoke-virtual {v6, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string/jumbo v2, "param"

    invoke-virtual {v6, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v6

    :goto_9
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->handleFPAuthResponseReceiver([Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;ZZ)V

    goto/16 :goto_1

    :cond_19
    new-instance v6, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v6}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    goto :goto_9

    :cond_1a
    const/4 v2, 0x0

    aget-object v2, v3, v2

    const-string/jumbo v4, "wear"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    array-length v2, v3

    if-lez v2, :cond_2

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v2, "type"

    const/4 v5, 0x3

    invoke-virtual {v4, v2, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v2, "version"

    const/4 v5, 0x2

    invoke-virtual {v4, v2, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v2, "data"

    const/4 v5, 0x2

    aget-object v5, v3, v5

    const-string/jumbo v8, "UTF-8"

    invoke-static {v5, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a()Lcom/alipay/android/app/hardwarepay/bracelet/f;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/android/app/plugin/b;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v8, v9}, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    const/16 v5, 0x7b

    if-ne v2, v5, :cond_1b

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alipay_msp_bl_bt_shutdown"

    invoke-static {v3}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "bl"

    sget-object v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v5, "0005"

    invoke-static {v5, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->statusWithTip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v4, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->executeEvent(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1b
    const-string/jumbo v2, "param"

    invoke-virtual {v6, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "param"

    invoke-virtual {v6, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    :goto_a
    invoke-direct {p0, v3, v4, v7, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->handleBLAuthResponseReceiver([Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;ZLcom/alipay/android/app/json/JSONObject;)V

    goto/16 :goto_1

    :cond_1c
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionParams()[Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    array-length v2, v4

    if-lez v2, :cond_2

    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_b
    array-length v5, v4

    if-ge v2, v5, :cond_21

    aget-object v5, v4, v2

    if-eqz v5, :cond_1d

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "time="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    :try_start_5
    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_a

    move-result v3

    :goto_c
    if-ltz v3, :cond_1d

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-virtual {v5, v3}, Lcom/alipay/android/app/hardwarepay/base/d;->a(I)V

    :cond_1d
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1e
    const-string/jumbo v6, "loadtxt="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    if-eqz v6, :cond_1d

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    const/4 v7, 0x0

    const/high16 v8, -0x1000000

    invoke-virtual {v6, v5, v7, v8}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Ljava/lang/String;II)V

    goto :goto_d

    :cond_1f
    const-string/jumbo v6, "status=success"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    if-eqz v6, :cond_20

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-virtual {v5}, Lcom/alipay/android/app/hardwarepay/base/d;->e()V

    goto :goto_d

    :cond_20
    const-string/jumbo v6, "status=loading"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-virtual {v5}, Lcom/alipay/android/app/hardwarepay/base/d;->f()V

    goto :goto_d

    :cond_21
    if-ltz v3, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    goto/16 :goto_1

    :pswitch_6
    const/4 v2, 0x1

    const-string/jumbo v3, "phonecashiermsp#flybird"

    const-string/jumbo v4, "FlybirdEventHandler.handleEvent"

    const-string/jumbo v5, "start scan fp or bl"

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionParams()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x4

    if-lt v3, v4, :cond_2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string/jumbo v4, "fp"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v4, "bizId"

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v4, "type"

    const/16 v5, 0x25a

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v4, "actionType"

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "data"

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "responseMsg"

    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "token"

    const/4 v5, 0x4

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    array-length v4, v2

    const/4 v5, 0x5

    if-le v4, v5, :cond_22

    const-string/jumbo v4, "scanType"

    const/4 v5, 0x5

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "tipsMsg"

    const/4 v5, 0x6

    aget-object v2, v2, v5

    invoke-virtual {v3, v4, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v2

    invoke-virtual {v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v6, v7, v3

    invoke-virtual {v2, v4, v5, v7}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_23
    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string/jumbo v3, "wear"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.alipay.android.app.hardwarepay.bracelet.activity.HardwareHandleActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionParams()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    array-length v4, v3

    const/4 v5, 0x3

    if-le v4, v5, :cond_24

    const-string/jumbo v4, "protocol"

    const-string/jumbo v5, "new"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "type"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "action"

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "reqMsg"

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "submitMsgName"

    const/4 v5, 0x3

    aget-object v3, v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "bizId"

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_24
    invoke-virtual {v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->dismissLoading()V

    invoke-virtual {v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :pswitch_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->getParams()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->getParams()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v4, :cond_26

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->getParams()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    const-string/jumbo v7, "\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_25

    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_26
    const/4 v2, 0x4

    const-string/jumbo v4, "phonecashiermsp#flybird"

    const-string/jumbo v5, "FlybirdEventHandler.handleEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "type["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] type.getParams():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v5, v7}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :goto_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    instance-of v4, v6, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    if-eqz v4, :cond_2a

    invoke-virtual {v6, v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->onBncbBack(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_28
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->isJsonObjectString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    const-string/jumbo v5, "phonecashiermsp#flybird"

    const-string/jumbo v7, "FlybirdEventHandler.handleEvent.isJson"

    invoke-static {v4, v5, v7, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_29
    const-string/jumbo v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string/jumbo v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string/jumbo v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    const-string/jumbo v5, "phonecashiermsp#flybird"

    const-string/jumbo v7, "FlybirdEventHandler.handleEvent.notJson"

    invoke-static {v4, v5, v7, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_2a
    invoke-static {}, Lcom/alipay/android/app/birdnest/a;->a()Lcom/alipay/android/app/birdnest/a;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/birdnest/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->addMaskView()V

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionData()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "param"

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v2}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    iput v4, v2, Lcom/alipay/android/app/b/a/j;->a:I

    const/16 v4, 0x10

    iput v4, v2, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v4, 0x7d5

    iput v4, v2, Lcom/alipay/android/app/b/a/j;->c:I

    const-string/jumbo v4, "param"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->addMaskView()V

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionData()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const-string/jumbo v4, "phonecashiermsp#flybird"

    const-string/jumbo v5, "FlybirdEventHandler.handleEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reload:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v7}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "param"

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "param"

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    if-nez v4, :cond_2b

    const/4 v2, 0x4

    const-string/jumbo v3, "phonecashiermsp#flybird"

    const-string/jumbo v4, "FlybirdEventHandler.handleEvent"

    const-string/jumbo v5, "reload: keys == null"

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :cond_2c
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\'"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string/jumbo v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    instance-of v3, v6, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    if-eqz v3, :cond_2e

    invoke-virtual {v6, v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->onBncbBack(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2e
    invoke-static {}, Lcom/alipay/android/app/birdnest/a;->a()Lcom/alipay/android/app/birdnest/a;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/birdnest/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionParams()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    const-string/jumbo v3, "0"

    invoke-static {v3}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;)V

    new-instance v3, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-direct {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->setmTpId(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Lcom/alipay/android/app/d/c/a;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->setmTplString(Ljava/lang/String;)V

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v2, v2, v6

    invoke-static {v2}, Lcom/alipay/android/app/d/c/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v5}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->setmTemplateContentData(Lcom/alipay/android/app/json/JSONObject;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->setFrameType(I)V

    :try_start_6
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->pushFrame(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    :try_end_6
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v2

    invoke-static {v2}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mSmsBean:Lcom/alipay/android/app/ui/quickpay/util/e;

    if-nez v3, :cond_2f

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/util/e;

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-wide v6, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mLastRequestTime:J

    invoke-direct {v3, v4, v2, v6, v7}, Lcom/alipay/android/app/ui/quickpay/util/e;-><init>(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;J)V

    iput-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mSmsBean:Lcom/alipay/android/app/ui/quickpay/util/e;

    :cond_2f
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/g;->a()Lcom/alipay/android/app/ui/quickpay/util/g;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mSmsBean:Lcom/alipay/android/app/ui/quickpay/util/e;

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/g;->a(Lcom/alipay/android/app/ui/quickpay/util/e;)V

    goto/16 :goto_1

    :pswitch_c
    new-instance v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$1;

    move-object/from16 v0, p1

    invoke-direct {v2, p0, v0, v6}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$1;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;)V

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$1;->start()V

    goto/16 :goto_1

    :pswitch_d
    new-instance v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$2;

    move-object/from16 v0, p1

    invoke-direct {v2, p0, v0, v6}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$2;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;)V

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$2;->start()V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionParams()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string/jumbo v4, "fp"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v3, "bizId"

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v3, "type"

    const/16 v4, 0x25b

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v3

    invoke-virtual {v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_30
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v4, "bizId"

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v4, "type"

    const/16 v5, 0x25c

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    :try_start_7
    const-string/jumbo v4, "data"

    const/4 v5, 0x2

    aget-object v2, v2, v5

    const-string/jumbo v5, "utf-8"

    invoke-static {v2, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    :goto_11
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v2

    invoke-virtual {v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_31
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string/jumbo v4, "wear"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v4, "type"

    const/16 v5, 0x1f7

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    const-string/jumbo v2, "result"

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    :cond_32
    :goto_12
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_33
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v5, "type"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    :try_start_8
    const-string/jumbo v5, "data"

    const/4 v6, 0x2

    aget-object v2, v2, v6

    const-string/jumbo v6, "utf-8"

    invoke-static {v2, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :goto_13
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v2, v5, v6, v7}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    const-string/jumbo v2, "result"

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto :goto_12

    :cond_34
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->query:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    invoke-virtual {v5}, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_32

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_35

    const-string/jumbo v2, "result"

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto/16 :goto_12

    :cond_35
    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "false"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string/jumbo v2, "result"

    const/16 v4, 0xc8

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto/16 :goto_12

    :cond_36
    const-string/jumbo v2, "result"

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto/16 :goto_12

    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->getParams()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    array-length v3, v2

    if-lez v3, :cond_37

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_38

    const-string/jumbo v4, "ex"

    const-string/jumbo v5, "OpenUrlEmptyEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "toOpenUri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    :goto_14
    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_38
    const-string/jumbo v4, "afwealth:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v4, 0x4

    const-string/jumbo v5, ""

    const-string/jumbo v6, "FlybirdEventHandler::hanleEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "OpenUrl by AFWEALTH_SCHEME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.antfortune.wealth.ALIPAY_OPEN_URL"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "alipay_sdk_scheme"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_14

    :cond_39
    const-string/jumbo v4, "alipays:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/android/app/sys/a;->d(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3a

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "https://ds.alipay.com/help/guide.htm?page=forgotpwd"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->openActivity(Landroid/content/Intent;Lcom/alipay/android/app/ui/quickpay/window/a;)V

    goto/16 :goto_14

    :cond_3a
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v6, v4, v3}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->openActivity(Landroid/content/Intent;Lcom/alipay/android/app/ui/quickpay/window/a;)V

    goto/16 :goto_14

    :cond_3b
    const-string/jumbo v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_10
    new-instance v2, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v2}, Lcom/alipay/android/app/b/a/j;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->getParams()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3e

    array-length v4, v3

    if-lez v4, :cond_3e

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-direct {v4, v3}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "loadtxt"

    invoke-virtual {v4, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string/jumbo v3, "loadtxt"

    invoke-virtual {v4, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v6, v4}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showLoading([Ljava/lang/String;)V

    :cond_3c
    :goto_15
    invoke-virtual {v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->addMaskView()V

    :goto_16
    const/16 v3, 0xb

    iput v3, v2, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v3, 0x3ea

    iput v3, v2, Lcom/alipay/android/app/b/a/j;->c:I

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    iput v3, v2, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->showPrePageLoading()V

    goto/16 :goto_1

    :cond_3d
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showLoading([Ljava/lang/String;)V

    goto :goto_15

    :cond_3e
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showLoading([Ljava/lang/String;)V

    goto :goto_16

    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getParams()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getCallResult(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v2

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/b/d/a;->h()Lcom/alipay/android/app/b/b/a;

    move-result-object v4

    if-nez v4, :cond_3f

    const/4 v2, 0x1

    const-string/jumbo v3, "phonecashiermsp"

    const-string/jumbo v4, "FlybirdEventHandler.handleEvent"

    const-string/jumbo v5, "ReturnData::payResult == null"

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3f
    const-string/jumbo v2, "resultStatus"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/alipay/android/app/b/b/a;->a()Z

    move-result v5

    if-nez v5, :cond_40

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_40

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/b/b/a;->a(Ljava/lang/String;)V

    :cond_40
    const-string/jumbo v5, "10000"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 v2, -0x1

    const-string/jumbo v5, "InsideBindCardSuccess"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/alipay/android/app/statistic/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_41
    const-string/jumbo v2, "memo"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/alipay/android/app/b/b/a;->a()Z

    move-result v5

    if-nez v5, :cond_42

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_42

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/b/b/a;->c(Ljava/lang/String;)V

    :cond_42
    const-string/jumbo v2, "result"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/alipay/android/app/b/b/a;->a()Z

    move-result v5

    if-nez v5, :cond_43

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_43

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/b/b/a;->b(Ljava/lang/String;)V

    :cond_43
    const-string/jumbo v2, "extendInfo"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/json/JSONObject;

    check-cast v2, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    if-eqz v5, :cond_44

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/b/b/a;->a(Lcom/alipay/android/app/json/JSONObject;)V

    :cond_44
    const-string/jumbo v2, "doNotExit"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionData()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mFBEventListener:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/app/plugin/b;->faceAuth(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionParams()[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v3, ""

    const-string/jumbo v2, ""

    if-eqz v4, :cond_45

    array-length v5, v4

    const/4 v6, 0x1

    if-lt v5, v6, :cond_45

    const/4 v3, 0x0

    aget-object v3, v4, v3

    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_45

    const/4 v2, 0x1

    aget-object v2, v4, v2

    :cond_45
    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionData()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mFBEventListener:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-interface {v4, v3, v2, v5, v6}, Lcom/alipay/android/app/plugin/b;->verifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionParams()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_46

    const-string/jumbo v5, "url"

    invoke-virtual {v3, v5, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    const/4 v4, 0x2

    aget-object v4, v2, v4

    const-string/jumbo v5, "content"

    invoke-virtual {v3, v5, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    array-length v4, v2

    const/4 v5, 0x4

    if-lt v4, v5, :cond_47

    const/4 v4, 0x3

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    invoke-virtual {v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$3;

    invoke-direct {v4, p0, v6, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$3;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Lcom/alipay/android/app/json/JSONObject;)V

    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :pswitch_15
    :try_start_9
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "+86"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "phonenum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/birdnest/a;->a()Lcom/alipay/android/app/birdnest/a;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/birdnest/a;->a(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v2

    goto/16 :goto_1

    :pswitch_16
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->checkLoginStatus()V

    goto/16 :goto_1

    :pswitch_17
    if-eqz v6, :cond_49

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v6, v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showLoading([Ljava/lang/String;)V

    :cond_49
    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/b/a/j;

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    const/16 v5, 0x10

    const/16 v6, 0x7d0

    invoke-virtual {v2}, Lcom/alipay/android/app/b/d/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/alipay/android/app/b/a/j;-><init>(IIILjava/lang/Object;)V

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$4;

    move-object/from16 v0, p1

    invoke-direct {v3, p0, v2, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$4;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Landroid/app/Activity;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :pswitch_19
    :try_start_a
    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v3

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionData()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "action"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "params"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "params"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {v3}, Lcom/alipay/android/app/b/d/a;->f()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "=\""

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4a

    const-string/jumbo v10, "&"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "=\""

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\""

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_17

    :catch_5
    move-exception v2

    invoke-static {v2}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_4a
    :try_start_b
    const-string/jumbo v10, "&"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_4b
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/android/app/b;->a(Landroid/content/Context;)Lcom/alipay/android/app/b;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/alipay/android/app/b/d/a;->d()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :try_start_c
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "mini_loading_certpay"

    invoke-static {v3}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v6, v3}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showLoading([Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :goto_18
    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "alipays://platformapi/startApp?appId=20000125&orderSuffix="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "utf8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&certPaySession="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/android/app/b;->a(Landroid/content/Context;)Lcom/alipay/android/app/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    const-string/jumbo v4, "&certPayCallBackUrl="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "utf8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    const-string/jumbo v3, "&certPaypid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v6, v3, v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->openActivity(Landroid/content/Intent;Lcom/alipay/android/app/ui/quickpay/window/a;)V

    goto/16 :goto_1

    :catch_6
    move-exception v2

    invoke-static {v2}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_18

    :pswitch_1a
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getParamsMap()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v2, "promotion"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x1

    const-string/jumbo v5, "phonecashiermsp"

    const-string/jumbo v6, "FlybirdEventHandler.handleEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Feedback::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4d

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "spaceCode"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "objectId"

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "behavior"

    invoke-virtual {v4, v6}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    const-string/jumbo v7, "phonecashiermsp"

    const-string/jumbo v8, "FlybirdEventHandler.handleEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Feedback::spacecode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " adid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " behavior:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v6

    invoke-interface {v6, v2, v5, v4}, Lcom/alipay/android/app/plugin/b;->userFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    const-string/jumbo v2, "wallet"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_e
    new-instance v14, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v14, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v14, :cond_2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, ""

    const-string/jumbo v13, ""

    const-string/jumbo v2, "type"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string/jumbo v2, "type"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4e
    const-string/jumbo v2, "seedId"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string/jumbo v2, "seedId"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_4f
    const-string/jumbo v2, "ucId"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string/jumbo v2, "ucId"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_50
    const-string/jumbo v2, "bizType"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    const-string/jumbo v2, "bizType"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_51
    const-string/jumbo v2, "logLevel"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    const-string/jumbo v2, "logLevel"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_52
    const-string/jumbo v2, "actionId"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string/jumbo v2, "actionId"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_53
    const-string/jumbo v2, "spmId"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    const-string/jumbo v2, "spmId"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_54
    const-string/jumbo v2, "param1"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string/jumbo v2, "param1"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_55
    const-string/jumbo v2, "param2"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string/jumbo v2, "param2"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_56
    const-string/jumbo v2, "param3"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    const-string/jumbo v2, "param3"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_57
    const-string/jumbo v2, "param4"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string/jumbo v2, "param4"

    invoke-virtual {v14, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_58
    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v2

    invoke-interface/range {v2 .. v13}, Lcom/alipay/android/app/plugin/b;->walletBehaviorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v2

    invoke-static {v2}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionParams()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v2, v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    if-eqz p3, :cond_59

    invoke-static {}, Lcom/alipay/android/app/pay/g;->b()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_59

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/b/d/a;->h()Lcom/alipay/android/app/b/b/a;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "9000"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/b/b/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_59
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v4

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v4

    if-eqz v4, :cond_5a

    invoke-virtual {v4}, Lcom/alipay/android/app/b/d/a;->h()Lcom/alipay/android/app/b/b/a;

    move-result-object v2

    if-eqz v2, :cond_5a

    invoke-virtual {v2}, Lcom/alipay/android/app/b/b/a;->b()Ljava/lang/String;

    move-result-object v3

    :cond_5a
    if-eqz v3, :cond_2

    invoke-static {}, Lcom/alipay/android/app/pay/g;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    const-string/jumbo v4, "8000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "8000"

    const-string/jumbo v5, "9000"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/b/b/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1c
    new-instance v2, Lcom/alipay/android/app/flybird/ui/event/impl/LogEvent;

    invoke-direct {v2}, Lcom/alipay/android/app/flybird/ui/event/impl/LogEvent;-><init>()V

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getParamsMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/flybird/ui/event/impl/LogEvent;->submitLog(ILjava/util/Map;)V

    goto/16 :goto_1

    :pswitch_1d
    invoke-virtual {v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->removeMaskView()V

    goto/16 :goto_1

    :catch_8
    move-exception v2

    goto/16 :goto_13

    :catch_9
    move-exception v2

    goto/16 :goto_11

    :catch_a
    move-exception v5

    goto/16 :goto_c

    :cond_5b
    move v8, v2

    goto/16 :goto_7

    :cond_5c
    move-object v5, v4

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
    .end packed-switch
.end method

.method private handleFPAuthResponseReceiver([Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;ZZ)V
    .locals 11

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    const-string/jumbo v2, "KeyIsFpPay"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/android/app/statistic/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "fp"

    const-string/jumbo v2, "FpPayStart"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    aget-object v6, p1, v1

    array-length v1, p1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    const/4 v1, 0x3

    aget-object v1, p1, v1

    move-object v10, v1

    :goto_0
    array-length v1, p1

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    const/4 v1, 0x4

    aget-object v3, p1, v1

    :goto_1
    const/4 v1, 0x1

    const-string/jumbo v2, "phonecashiermsp#fingerprint"

    const-string/jumbo v4, "FlybirdEventHandler.handleFPAuthResponseReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u6307\u7eb9\u652f\u4ed8 isNativeValidate:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " isSamsungFPPay:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " params:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->retryTime:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    if-eqz p6, :cond_3

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->fpSensorStatus:Z

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getCurrentIFormShower()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->toUnregisterReceiver()V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/alipay/android/app/plugin/b;->getResources(Landroid/app/Activity;)Landroid/content/res/Resources;

    move-result-object v4

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$6;

    invoke-direct {v1, p0, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$6;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Landroid/content/res/Resources;)V

    sput-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->fpStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.FINGERPRINTSENSOR_STATUS_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->fpStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;

    move-object v2, p0

    move-object v7, p4

    move-object v8, p3

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$7;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Ljava/lang/String;Landroid/content/res/Resources;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Z)V

    sput-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->fpResultReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p5, :cond_0

    invoke-virtual {v5}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;

    move/from16 v0, p6

    invoke-direct {v2, p0, v0, v5, v10}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;ZLcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "fingerprint_authenticate_result"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->fpResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, p2, v2, v3}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    move-object v10, v1

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private static isJsonObjectString(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "{"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "}"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const-string/jumbo v4, "FlybirdEventHandler"

    const-string/jumbo v5, "isJsonString"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "param:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v5, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private processEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 1

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$11;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$11;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-static {v0}, Lcom/alipay/android/app/d/b/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private putFpOpenField(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    const-string/jumbo v2, "KeyIsFpOpen"

    invoke-static {v1, v2}, Lcom/alipay/android/app/statistic/a/a;->c(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string/jumbo v0, "fp"

    const-string/jumbo v1, "FpOpenEndS"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putFpPayField(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    const-string/jumbo v2, "KeyIsByPwd"

    invoke-static {v1, v2}, Lcom/alipay/android/app/statistic/a/a;->c(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    const-string/jumbo v3, "KeyIsFpPay"

    invoke-static {v2, v3}, Lcom/alipay/android/app/statistic/a/a;->c(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    const-string/jumbo v0, "fp"

    const-string/jumbo v1, "FpPayEndS"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showFlybirdDialog(Landroid/app/Activity;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string/jumbo v0, ""

    const-string/jumbo v1, "FlybirdEventHandler::showDialog"

    const-string/jumbo v2, "start"

    invoke-static {v7, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getParamsMap()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v0, "title"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "message"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "cancelButton"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "okButton"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v5, "otherButton"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v2, v8}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;->build(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    move-result-object v2

    iput-boolean v7, v2, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;->mIsCancel:Z

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "\'ok=1\'"

    invoke-static {v3, v2}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;->build(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v4, v8}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;->build(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p1, v0, v1, v5}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;

    return-void
.end method

.method private showPrePageLoading()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\'pageloading=1\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/birdnest/a;->a()Lcom/alipay/android/app/birdnest/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/birdnest/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string/jumbo v1, "phonecashiermsp#flybird"

    const-string/jumbo v2, "FlybirdEventHandler.showPrePageLoading"

    const-string/jumbo v3, "showPrePageLoading"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static statusWithTip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"status\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\",\"tip\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public beforeFrameChangedClean(I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->toUnregisterReceiver()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->blReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->blReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->blReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->isNewMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->dialog:Lcom/alipay/android/app/hardwarepay/base/d;

    :cond_2
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/c;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected executeEvent(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v2, "FlybirdEventHandler.executeEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "biz:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " EventType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " EventData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v0, p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V

    invoke-virtual {v0, p3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->setActionData(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->setParams([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->hanleEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    return-void
.end method

.method public hanleEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mWindowManager:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->peekFrame()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    move-result-object v3

    const-string/jumbo v0, ""

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getWindowType()I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "transition"

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getCurrent()[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v5, v4

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    invoke-direct {p0, p1, v6, v3, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->handleEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "toast"

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "dialog"

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTpId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    return v2
.end method

.method public hidePrePageLoading()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\'pageloading=0\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/birdnest/a;->a()Lcom/alipay/android/app/birdnest/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/birdnest/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string/jumbo v1, "phonecashiermsp#flybird"

    const-string/jumbo v2, "FlybirdEventHandler.hidePrePageLoading"

    const-string/jumbo v3, "hidePrePageLoading"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReadSuccess(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\'data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/birdnest/a;->a()Lcom/alipay/android/app/birdnest/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/birdnest/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string/jumbo v1, "phonecashiermsp#flybird"

    const-string/jumbo v2, "FlybirdEventHandler.onReadSuccess"

    invoke-static {v0, v1, v2, p1}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected toSubmitPay(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Landroid/content/BroadcastReceiver;I)V
    .locals 5

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v1}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mBizId:I

    iput v2, v1, Lcom/alipay/android/app/b/a/j;->a:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    iput-object v2, v1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    const/16 v0, 0xb

    iput v0, v1, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v0, 0x7d3

    iput v0, v1, Lcom/alipay/android/app/b/a/j;->c:I

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    add-int/lit8 v2, p4, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/b/a/h;->a(Lcom/alipay/android/app/b/a/j;I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected toUnregisterReceiver()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v2, "FlybirdEventHandler.toUnregisterReceiver"

    const-string/jumbo v3, "toUnregisterReceiver"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->fpStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->fpStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->fpStatusReceiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->fpResultReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->fpResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->fpResultReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
