.class public Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public activityName:Ljava/lang/String;

.field public appIcon:Landroid/graphics/Bitmap;

.field public appIconName:Ljava/lang/String;

.field public componentName:Ljava/lang/String;

.field public endTime:J

.field public intent:Landroid/content/Intent;

.field private isTimerRunning:Z

.field public packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/luckymoney/webapi/LuckyAlarmResult;

.field public time:J

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/luckymoney/webapi/LuckyAlarmResult;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->this$0:Lcom/miui/luckymoney/webapi/LuckyAlarmResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/luckymoney/webapi/LuckyAlarmResult;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->this$0:Lcom/miui/luckymoney/webapi/LuckyAlarmResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->isTimerRunning:Z

    return-void
.end method


# virtual methods
.method public isTimerRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->isTimerRunning:Z

    return v0
.end method

.method public setTimerRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->isTimerRunning:Z

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "activityName"

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "appIcon"

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->appIconName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "time"

    iget-wide v2, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "endTime"

    iget-wide v2, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->endTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "componentName"

    iget-object v2, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "isTimerRunning"

    iget-boolean v2, p0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->isTimerRunning:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method
