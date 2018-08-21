.class public Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;
.super Ljava/lang/Object;
.source "PaymentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/payment/PaymentReceiver$LoadCardData;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.miui.paymentassistant.provider"

.field private static final PAYMENT_UPDATE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "PaymentReceiver"

.field private static volatile sInstance:Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mLoadCardData:Lcom/miui/home/launcher/assistant/payment/PaymentReceiver$LoadCardData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.miui.paymentassistant.provider/payment_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->PAYMENT_UPDATE_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver$1;-><init>(Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->mContentObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->PAYMENT_UPDATE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;)Lcom/miui/home/launcher/assistant/payment/PaymentReceiver$LoadCardData;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->mLoadCardData:Lcom/miui/home/launcher/assistant/payment/PaymentReceiver$LoadCardData;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->sInstance:Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->sInstance:Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->sInstance:Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->sInstance:Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public registerReceiver()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->PAYMENT_UPDATE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setLoadCallBack(Lcom/miui/home/launcher/assistant/payment/PaymentReceiver$LoadCardData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->mLoadCardData:Lcom/miui/home/launcher/assistant/payment/PaymentReceiver$LoadCardData;

    return-void
.end method

.method public unRegisterReceiver()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentReceiver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PaymentReceiver"

    const-string/jumbo v2, "unregister"

    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
