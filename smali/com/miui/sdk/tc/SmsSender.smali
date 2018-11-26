.class public Lcom/miui/sdk/tc/SmsSender;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sRealSmsSender:Lcom/miui/sdk/tc/SmsSender$IRealSmsSender;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendTextMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const-string/jumbo v0, "SmsSender"

    const-string/jumbo v1, "addr:%s, text:%s, slotId:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/sdk/tc/SmsSender;->sRealSmsSender:Lcom/miui/sdk/tc/SmsSender$IRealSmsSender;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/sdk/tc/SmsSender;->sRealSmsSender:Lcom/miui/sdk/tc/SmsSender$IRealSmsSender;

    invoke-interface {v0, p0, p1, p2}, Lcom/miui/sdk/tc/SmsSender$IRealSmsSender;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static setRealSmsSender(Lcom/miui/sdk/tc/SmsSender$IRealSmsSender;)V
    .locals 0

    sput-object p0, Lcom/miui/sdk/tc/SmsSender;->sRealSmsSender:Lcom/miui/sdk/tc/SmsSender$IRealSmsSender;

    return-void
.end method
