.class public Lcom/xiaomi/analytics/EventAction;
.super Lcom/xiaomi/analytics/Action;
.source ""


# static fields
.field protected static final EVENT_DEFAULT_PARAM:Ljava/lang/String; = "_event_default_param_"


# instance fields
.field private boJ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/analytics/EventAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/analytics/Action;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EventAction"

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "eventName is null when constructing EventAction!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/analytics/EventAction;->boJ:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/analytics/EventAction;->boJ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/EventAction;->addEventId(Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    if-eqz p2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "_event_default_param_"

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/analytics/EventAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    :cond_1
    return-void
.end method
