.class public Lcom/xiaomi/mipush/sdk/MessageHandleService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/MessageHandleService$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/mipush/sdk/MessageHandleService$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/MessageHandleService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "MessageHandleThread"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected static a(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/MessageHandleService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/MessageHandleService$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MessageHandleService$a;->a()Lcom/xiaomi/mipush/sdk/av;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MessageHandleService$a;->b()Landroid/content/Intent;

    move-result-object v2

    const-string v0, "message_type"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/as;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/as;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/as;->a(Landroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;

    move-result-object v0

    const-string v3, "eventMessageType"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v0, :cond_0

    instance-of v4, v0, Lcom/xiaomi/mipush/sdk/af;

    if-eqz v4, :cond_6

    check-cast v0, Lcom/xiaomi/mipush/sdk/af;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/af;->b()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/av;->onReceiveMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/af;)V

    :cond_2
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/af;->l()I

    move-result v4

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v3

    const/16 v4, 0x7d4

    const-string v5, "call passThrough callBack"

    invoke-virtual {v3, v2, v4, v5}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Intent;ILjava/lang/String;)V

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/av;->onReceivePassThroughMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/af;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_3
    :try_start_1
    const-string v0, "key_command"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/ae;

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/av;->onCommandResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/ae;)V

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/ae;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/j/a/g;->a:Lcom/xiaomi/j/a/g;

    iget-object v3, v3, Lcom/xiaomi/j/a/g;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/av;->onReceiveRegisterResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/ae;)V

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/ae;->c()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/g;->c(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/af;->h()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v3

    const/16 v4, 0x3ef

    const-string v5, "call notification callBack"

    invoke-virtual {v3, v2, v4, v5}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Intent;ILjava/lang/String;)V

    :goto_1
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/av;->onNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/af;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v3

    const/16 v4, 0xbbf

    const-string v5, "call business callBack"

    invoke-virtual {v3, v2, v4, v5}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/av;->onNotificationMessageArrived(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/af;)V

    goto/16 :goto_0

    :cond_6
    instance-of v2, v0, Lcom/xiaomi/mipush/sdk/ae;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/xiaomi/mipush/sdk/ae;

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/av;->onCommandResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/ae;)V

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/ae;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/j/a/g;->a:Lcom/xiaomi/j/a/g;

    iget-object v3, v3, Lcom/xiaomi/j/a/g;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/av;->onReceiveRegisterResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/ae;)V

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/ae;->c()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/g;->c(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/xiaomi/mipush/sdk/MessageHandleService$a;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/MessageHandleService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/MessageHandleService;->a(Landroid/app/Service;Landroid/content/Intent;)V

    return-void
.end method
