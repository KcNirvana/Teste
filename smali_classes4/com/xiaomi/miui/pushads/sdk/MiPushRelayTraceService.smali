.class public Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;
.super Landroid/app/Service;


# static fields
.field private static a:Lcom/xiaomi/push/cj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/xiaomi/push/cj;->a()Lcom/xiaomi/push/cj;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;->a:Lcom/xiaomi/push/cj;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "intenttype"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "id"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "showType"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/xiaomi/push/cg;

    invoke-direct {v4}, Lcom/xiaomi/push/cg;-><init>()V

    iput-wide v1, v4, Lcom/xiaomi/push/cg;->a:J

    iput v3, v4, Lcom/xiaomi/push/cg;->a:I

    const-string v1, ""

    iput-object v1, v4, Lcom/xiaomi/push/cg;->a:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;->a:Lcom/xiaomi/push/cj;

    if-nez v1, :cond_1

    const-string p1, "MiPushRelayTraceService"

    const-string p3, "log sender is null!"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "clickT:"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;->a:Lcom/xiaomi/push/cj;

    invoke-virtual {v0, v4}, Lcom/xiaomi/push/cj;->a(Lcom/xiaomi/push/cg;)V

    const-string v0, "pendingintent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    const-string p1, "deleteT:"

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;->a:Lcom/xiaomi/push/cj;

    invoke-virtual {p1, v4}, Lcom/xiaomi/push/cj;->b(Lcom/xiaomi/push/cg;)V

    :cond_2
    :goto_0
    const-string p1, "notifyid"

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    const-string p3, "action\uff0cremove noti"

    invoke-static {p3}, Lcom/xiaomi/miui/pushads/sdk/l;->a(Ljava/lang/String;)V

    const-string p3, "notification"

    invoke-virtual {p0, p3}, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationManager;

    invoke-virtual {p3, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :try_start_1
    const-class p1, Landroid/content/Context;

    const-string p3, "STATUS_BAR_SERVICE"

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string v0, "collapse"

    new-array v1, p2, [Ljava/lang/Class;

    invoke-virtual {p3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    new-array v0, p2, [Ljava/lang/Object;

    invoke-virtual {p3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "\u5173\u95edstatus bar \u6210\u529f"

    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p1, "ads-notify-fd5dfce4"

    const-string p3, "Reflect failed"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
