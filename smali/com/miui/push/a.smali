.class public Lcom/miui/push/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static bab:Lcom/miui/push/a;

.field private static bac:Ljava/lang/String;

.field private static bad:I


# instance fields
.field private baa:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/push/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/push/a;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/push/a;->bab:Lcom/miui/push/a;

    const/4 v0, 0x0

    sput v0, Lcom/miui/push/a;->bad:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/push/b;

    invoke-direct {v0, p0}, Lcom/miui/push/b;-><init>(Lcom/miui/push/a;)V

    iput-object v0, p0, Lcom/miui/push/a;->baa:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/miui/push/a;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bvQ(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/miui/push/a;->bad:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/miui/push/a;->bad:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/push/a;->bad:I

    sget-object v0, Lcom/miui/push/a;->bac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "2882303761517330652"

    const-string/jumbo v1, "5691733067652"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getRegId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/push/a;->bac:Ljava/lang/String;

    sget-object v0, Lcom/miui/push/a;->bac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/push/a;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initMiPushClient.register failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/miui/push/a;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initMiPushClient.register success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/miui/push/a;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initMiPushClient.register success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/push/a;
    .locals 2

    sget-object v0, Lcom/miui/push/a;->bab:Lcom/miui/push/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/push/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/push/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/push/a;->bab:Lcom/miui/push/a;

    :cond_0
    sget-object v0, Lcom/miui/push/a;->bab:Lcom/miui/push/a;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/miui/push/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getRegId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/push/a;->bac:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/push/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/push/a;->bvQ(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "action_update_sc_network_allow"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/push/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/push/a;->baa:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
