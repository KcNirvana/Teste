.class public Lcom/miui/home/launcher/assistant/payment/PaymentItem;
.super Ljava/lang/Object;
.source "PaymentItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/interfaces/BaseItem;


# static fields
.field private static final TAG:Ljava/lang/String; = "PaymentItem"

.field private static sInstance:Lcom/miui/home/launcher/assistant/payment/PaymentItem;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPaymentCardContent:Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/payment/PaymentItem;
    .locals 2

    const-class v1, Lcom/miui/home/launcher/assistant/payment/PaymentItem;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/payment/PaymentItem;->sInstance:Lcom/miui/home/launcher/assistant/payment/PaymentItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/payment/PaymentItem;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/payment/PaymentItem;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/payment/PaymentItem;->sInstance:Lcom/miui/home/launcher/assistant/payment/PaymentItem;

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/assistant/payment/PaymentItem;->sInstance:Lcom/miui/home/launcher/assistant/payment/PaymentItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public isPaymentAssistantEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentItem;->mPaymentCardContent:Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentItem;->mPaymentCardContent:Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public queryItem(Ljava/lang/String;I)Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;
    .locals 2

    const-string/jumbo v0, "PaymentItem"

    const-string/jumbo v1, "queryItem"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->queryCardContent(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentItem;->mPaymentCardContent:Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    const-string/jumbo v0, "PaymentItem"

    const-string/jumbo v1, "queryItem end"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentItem;->mPaymentCardContent:Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    return-object v0
.end method

.method public bridge synthetic queryItem(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/assistant/payment/PaymentItem;->queryItem(Ljava/lang/String;I)Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    move-result-object v0

    return-object v0
.end method
