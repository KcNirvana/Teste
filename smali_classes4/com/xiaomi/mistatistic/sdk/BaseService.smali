.class public Lcom/xiaomi/mistatistic/sdk/BaseService;
.super Landroid/app/Service;
.source "BaseService.java"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final DELETE_BY_START_END_TIME:I = 0x5

.field public static final DELETE_BY_TS:I = 0x4

.field public static final DELETE_OLD:I = 0x3

.field public static final END_TIME:Ljava/lang/String; = "endTime"

.field public static final EVENT_TYPE:Ljava/lang/String; = "eventType"

.field public static final INSERT:I = 0x1

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final NEW_VALUE:Ljava/lang/String; = "newValue"

.field public static final START_TIME:Ljava/lang/String; = "startTime"

.field public static final STAT_EVENT_POJO:Ljava/lang/String; = "StatEventPojo"

.field public static final TIME_STAMP:Ljava/lang/String; = "timeStamp"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UPDATE:I = 0x2


# instance fields
.field private eventDAO:Lcom/xiaomi/mistatistic/sdk/controller/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/mistatistic/sdk/BaseService;)Lcom/xiaomi/mistatistic/sdk/controller/h;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mistatistic/sdk/BaseService;->eventDAO:Lcom/xiaomi/mistatistic/sdk/controller/h;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Lcom/xiaomi/mistatistic/sdk/BaseService$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/mistatistic/sdk/BaseService$1;-><init>(Lcom/xiaomi/mistatistic/sdk/BaseService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a()V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/BaseService;->eventDAO:Lcom/xiaomi/mistatistic/sdk/controller/h;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "type"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "type"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p2, "startTime"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string p2, "endTime"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string p2, "eventType"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/BaseService;->eventDAO:Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(JJI)V

    goto :goto_0

    :pswitch_1
    const-string p2, "timeStamp"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/xiaomi/mistatistic/sdk/BaseService;->eventDAO:Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-virtual {p3, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->i(J)V

    goto :goto_0

    :pswitch_2
    const-string p2, "timeStamp"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/xiaomi/mistatistic/sdk/BaseService;->eventDAO:Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-virtual {p3, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->g(J)V

    goto :goto_0

    :pswitch_3
    const-string p2, "key"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "category"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "newValue"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/BaseService;->eventDAO:Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-virtual {v0, p2, p3, p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p2, "StatEventPojo"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    iget-object p2, p0, Lcom/xiaomi/mistatistic/sdk/BaseService;->eventDAO:Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-virtual {p2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
