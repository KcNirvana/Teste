.class public Lcom/xiaomi/mipush/sdk/as;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/xiaomi/mipush/sdk/as;

.field private static c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mipush/sdk/as;->a:Lcom/xiaomi/mipush/sdk/as;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/as;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const-string v0, "notify_effect"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const-string v0, "notify_effect"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    const-string v1, "intent_flag"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    sget-object v2, Lcom/xiaomi/push/service/au;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_0

    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cause by intent_flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    :cond_3
    move v1, v2

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cause: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/xiaomi/push/service/au;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "intent_uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "intent_uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    const/4 v2, 0x1

    :try_start_3
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    :try_start_4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "class_name"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "class_name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v0, v2

    goto/16 :goto_2

    :cond_6
    sget-object v2, Lcom/xiaomi/push/service/au;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "web_uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_4
    :try_start_5
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v4, "http"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "https"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_2

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v2, v0

    move-object v0, v3

    goto/16 :goto_3

    :cond_8
    move-object v0, v3

    goto/16 :goto_2

    :cond_9
    move-object v2, v0

    goto :goto_4

    :cond_a
    move-object v0, v3

    goto/16 :goto_2

    :cond_b
    move-object v0, v3

    goto/16 :goto_2
.end method

.method private a(Lcom/xiaomi/j/a/ag;Z[BLjava/lang/String;I)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;Lcom/xiaomi/j/a/ag;)Lb/a/a/a;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiving an un-recognized message. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v0

    invoke-static {p5}, Lcom/xiaomi/push/service/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "receiving an un-recognized message."

    invoke-virtual {v0, v1, p4, v2}, Lcom/xiaomi/push/service/a/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive a message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/mipush/sdk/k; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lb/a/a/f; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->a()Lcom/xiaomi/j/a/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing a message, action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/mipush/sdk/au;->a:[I

    invoke-virtual {v1}, Lcom/xiaomi/j/a/a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/as;->a(Lcom/xiaomi/j/a/ag;)V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v1

    invoke-static {p5}, Lcom/xiaomi/push/service/a/e;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p4, v0}, Lcom/xiaomi/push/service/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    const-string v1, "receive a message which action string is not valid. is the reg expired?"

    invoke-static {v1}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v1

    invoke-static {p5}, Lcom/xiaomi/push/service/a/e;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p4, v0}, Lcom/xiaomi/push/service/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    move-object v4, v0

    check-cast v4, Lcom/xiaomi/j/a/al;

    iget-wide v0, v4, Lcom/xiaomi/j/a/al;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v0

    iget-object v1, v4, Lcom/xiaomi/j/a/al;->h:Ljava/lang/String;

    iget-object v2, v4, Lcom/xiaomi/j/a/al;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/w;->r(Landroid/content/Context;)V

    :cond_3
    const/4 v1, 0x0

    iget-object v0, v4, Lcom/xiaomi/j/a/al;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v4, Lcom/xiaomi/j/a/al;->h:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v0, Lcom/xiaomi/j/a/g;->a:Lcom/xiaomi/j/a/g;

    iget-object v0, v0, Lcom/xiaomi/j/a/g;->j:Ljava/lang/String;

    iget-wide v2, v4, Lcom/xiaomi/j/a/al;->f:J

    iget-object v4, v4, Lcom/xiaomi/j/a/al;->g:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/ar;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/ae;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/ax;->f()V

    goto/16 :goto_0

    :pswitch_1
    check-cast v0, Lcom/xiaomi/j/a/as;

    iget-wide v0, v0, Lcom/xiaomi/j/a/as;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/e;->h()V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/w;->e(Landroid/content/Context;)V

    :cond_5
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    goto/16 :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez p2, :cond_6

    const-string v0, "receive a message in pause state. drop it"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v0

    invoke-static {p5}, Lcom/xiaomi/push/service/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "receive a message in pause state. drop it"

    invoke-virtual {v0, v1, p4, v2}, Lcom/xiaomi/push/service/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    check-cast v0, Lcom/xiaomi/j/a/ao;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/ao;->l()Lcom/xiaomi/j/a/u;

    move-result-object v4

    if-nez v4, :cond_7

    const-string v0, "receive an empty message without push content, drop it"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v0

    invoke-static {p5}, Lcom/xiaomi/push/service/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "receive an empty message without push content, drop it"

    invoke-virtual {v0, v1, p4, v2}, Lcom/xiaomi/push/service/a/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    if-eqz p2, :cond_8

    invoke-static {p1}, Lcom/xiaomi/push/service/ah;->b(Lcom/xiaomi/j/a/ag;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/xiaomi/j/a/u;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->m()Lcom/xiaomi/j/a/v;

    move-result-object v3

    iget-object v5, p1, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/xiaomi/j/a/u;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v3, v5, v6}, Lcom/xiaomi/mipush/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/j/a/v;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    if-nez p2, :cond_9

    invoke-virtual {v0}, Lcom/xiaomi/j/a/ao;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/ao;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/w;->i(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_d

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/ao;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    :goto_3
    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    if-eqz v3, :cond_a

    iget-object v3, p1, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    invoke-virtual {v3}, Lcom/xiaomi/j/a/v;->s()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v1, p1, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    iget-object v1, v1, Lcom/xiaomi/j/a/v;->j:Ljava/util/Map;

    const-string v3, "jobkey"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {v4}, Lcom/xiaomi/j/a/u;->b()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_4
    if-nez p2, :cond_e

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/xiaomi/mipush/sdk/as;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drop a duplicate message, key="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v1

    invoke-static {p5}, Lcom/xiaomi/push/service/a/e;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drop a duplicate message, key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, p4, v3}, Lcom/xiaomi/push/service/a/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :cond_b
    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->m()Lcom/xiaomi/j/a/v;

    move-result-object v2

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/mipush/sdk/as;->a(Lcom/xiaomi/j/a/ao;Lcom/xiaomi/j/a/ag;)V

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/xiaomi/j/a/u;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->m()Lcom/xiaomi/j/a/v;

    move-result-object v3

    invoke-virtual {v4}, Lcom/xiaomi/j/a/u;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v5}, Lcom/xiaomi/mipush/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/j/a/v;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v0}, Lcom/xiaomi/j/a/ao;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/ao;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/w;->g(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_9

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/ao;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/w;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->m()Lcom/xiaomi/j/a/v;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/xiaomi/mipush/sdk/ar;->a(Lcom/xiaomi/j/a/ao;Lcom/xiaomi/j/a/v;Z)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/af;->l()I

    move-result v2

    if-nez v2, :cond_f

    if-nez p2, :cond_f

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/af;->m()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/push/service/ah;->a(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0, p1, p3}, Lcom/xiaomi/push/service/ah;->a(Landroid/content/Context;Lcom/xiaomi/j/a/ag;[B)Lcom/xiaomi/push/service/ah$b;

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive a message, msgid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/xiaomi/j/a/u;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", jobkey="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_b

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/af;->m()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/af;->m()Ljava/util/Map;

    move-result-object v2

    const-string v3, "notify_effect"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/af;->m()Ljava/util/Map;

    move-result-object v2

    const-string v0, "notify_effect"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/push/service/ah;->b(Lcom/xiaomi/j/a/ag;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    iget-object v3, p1, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/xiaomi/mipush/sdk/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "eventMessageType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "messageId"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez v1, :cond_10

    const-string v0, "Getting Intent fail from ignore reg message. "

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v0

    invoke-static {p5}, Lcom/xiaomi/push/service/a/e;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Getting Intent fail from ignore reg message."

    invoke-virtual {v0, v1, p4, v2}, Lcom/xiaomi/push/service/a/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v4}, Lcom/xiaomi/j/a/u;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "payload"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_11
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v1

    invoke-static {p5}, Lcom/xiaomi/push/service/a/e;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbbe

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "business message is clicked typeId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, p4, v3, v0}, Lcom/xiaomi/push/service/a/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_12
    :goto_5
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_13
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaomi/mipush/sdk/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_12

    sget-object v3, Lcom/xiaomi/push/service/au;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "key_message"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "eventMessageType"

    invoke-virtual {v2, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "messageId"

    invoke-virtual {v2, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_14
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v1

    invoke-static {p5}, Lcom/xiaomi/push/service/a/e;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3ee

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notification message is clicked typeId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, p4, v3, v4}, Lcom/xiaomi/push/service/a/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v1, Lcom/xiaomi/push/service/au;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v1

    invoke-static {p5}, Lcom/xiaomi/push/service/a/e;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try open web page typeId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, p4, v0}, Lcom/xiaomi/push/service/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_3
    move-object v5, v0

    check-cast v5, Lcom/xiaomi/j/a/aq;

    iget-wide v0, v5, Lcom/xiaomi/j/a/aq;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/xiaomi/j/a/aq;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/w;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_15
    const/4 v1, 0x0

    invoke-virtual {v5}, Lcom/xiaomi/j/a/aq;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/xiaomi/j/a/aq;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    sget-object v0, Lcom/xiaomi/j/a/g;->g:Lcom/xiaomi/j/a/g;

    iget-object v0, v0, Lcom/xiaomi/j/a/g;->j:Ljava/lang/String;

    iget-wide v2, v5, Lcom/xiaomi/j/a/aq;->f:J

    iget-object v4, v5, Lcom/xiaomi/j/a/aq;->g:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/xiaomi/j/a/aq;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/ar;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/ae;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_4
    move-object v5, v0

    check-cast v5, Lcom/xiaomi/j/a/au;

    iget-wide v0, v5, Lcom/xiaomi/j/a/au;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/xiaomi/j/a/au;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/w;->f(Landroid/content/Context;Ljava/lang/String;)V

    :cond_17
    const/4 v1, 0x0

    invoke-virtual {v5}, Lcom/xiaomi/j/a/au;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/xiaomi/j/a/au;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    sget-object v0, Lcom/xiaomi/j/a/g;->h:Lcom/xiaomi/j/a/g;

    iget-object v0, v0, Lcom/xiaomi/j/a/g;->j:Ljava/lang/String;

    iget-wide v2, v5, Lcom/xiaomi/j/a/au;->f:J

    iget-object v4, v5, Lcom/xiaomi/j/a/au;->g:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/xiaomi/j/a/au;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/ar;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/ae;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_5
    move-object v5, v0

    check-cast v5, Lcom/xiaomi/j/a/af;

    invoke-virtual {v5}, Lcom/xiaomi/j/a/af;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/xiaomi/j/a/af;->k()Ljava/util/List;

    move-result-object v3

    iget-wide v6, v5, Lcom/xiaomi/j/a/af;->g:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_1e

    sget-object v1, Lcom/xiaomi/j/a/g;->i:Lcom/xiaomi/j/a/g;

    iget-object v1, v1, Lcom/xiaomi/j/a/g;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz v3, :cond_1a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1a

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v1, v2}, Lcom/xiaomi/mipush/sdk/w;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "00:00"

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "00:00"

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaomi/mipush/sdk/e;->a(Z)V

    :goto_6
    const-string v1, "GMT+08"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/as;->a(Ljava/util/TimeZone;Ljava/util/TimeZone;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_7
    iget-wide v2, v5, Lcom/xiaomi/j/a/af;->g:J

    iget-object v4, v5, Lcom/xiaomi/j/a/af;->h:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/xiaomi/j/a/af;->m()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/ar;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/ae;

    move-result-object v1

    goto/16 :goto_0

    :cond_19
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaomi/mipush/sdk/e;->a(Z)V

    goto :goto_6

    :cond_1a
    sget-object v1, Lcom/xiaomi/j/a/g;->c:Lcom/xiaomi/j/a/g;

    iget-object v1, v1, Lcom/xiaomi/j/a/g;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v3, :cond_1b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaomi/mipush/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_7

    :cond_1b
    sget-object v1, Lcom/xiaomi/j/a/g;->d:Lcom/xiaomi/j/a/g;

    iget-object v1, v1, Lcom/xiaomi/j/a/g;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    if-eqz v3, :cond_1c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1c

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaomi/mipush/sdk/w;->b(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_7

    :cond_1c
    sget-object v1, Lcom/xiaomi/j/a/g;->e:Lcom/xiaomi/j/a/g;

    iget-object v1, v1, Lcom/xiaomi/j/a/g;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-eqz v3, :cond_1d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1d

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaomi/mipush/sdk/w;->c(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_7

    :cond_1d
    sget-object v1, Lcom/xiaomi/j/a/g;->f:Lcom/xiaomi/j/a/g;

    iget-object v1, v1, Lcom/xiaomi/j/a/g;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    if-eqz v3, :cond_1e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaomi/mipush/sdk/w;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1e
    move-object v1, v3

    goto/16 :goto_7

    :pswitch_6
    instance-of v1, v0, Lcom/xiaomi/j/a/ab;

    if-eqz v1, :cond_30

    check-cast v0, Lcom/xiaomi/j/a/ab;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/ab;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/j/a/s;->M:Lcom/xiaomi/j/a/s;

    iget-object v2, v2, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/j/a/ab;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-wide v2, v0, Lcom/xiaomi/j/a/ab;->g:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_20

    const-class v2, Lcom/xiaomi/mipush/sdk/al;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->d(Ljava/lang/String;)V

    const-string v0, "syncing"

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/mipush/sdk/bf;->a:Lcom/xiaomi/mipush/sdk/bf;

    invoke-virtual {v1, v3}, Lcom/xiaomi/mipush/sdk/al;->a(Lcom/xiaomi/mipush/sdk/bf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/bf;->a:Lcom/xiaomi/mipush/sdk/bf;

    const-string v3, "synced"

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/mipush/sdk/al;->a(Lcom/xiaomi/mipush/sdk/bf;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/w;->k(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/w;->f(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/ax;->b()V

    :cond_1f
    monitor-exit v2

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_20
    const-string v0, "syncing"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/mipush/sdk/bf;->a:Lcom/xiaomi/mipush/sdk/bf;

    invoke-virtual {v2, v3}, Lcom/xiaomi/mipush/sdk/al;->a(Lcom/xiaomi/mipush/sdk/bf;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-class v2, Lcom/xiaomi/mipush/sdk/al;

    monitor-enter v2

    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->c(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_22

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/xiaomi/mipush/sdk/ax;->a(ZLjava/lang/String;)V

    :cond_21
    :goto_8
    monitor-exit v2

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_22
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :cond_23
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_24
    sget-object v2, Lcom/xiaomi/j/a/s;->N:Lcom/xiaomi/j/a/s;

    iget-object v2, v2, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/j/a/ab;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-wide v2, v0, Lcom/xiaomi/j/a/ab;->g:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_26

    const-class v2, Lcom/xiaomi/mipush/sdk/al;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->d(Ljava/lang/String;)V

    const-string v0, "syncing"

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/mipush/sdk/bf;->b:Lcom/xiaomi/mipush/sdk/bf;

    invoke-virtual {v1, v3}, Lcom/xiaomi/mipush/sdk/al;->a(Lcom/xiaomi/mipush/sdk/bf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/bf;->b:Lcom/xiaomi/mipush/sdk/bf;

    const-string v3, "synced"

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/mipush/sdk/al;->a(Lcom/xiaomi/mipush/sdk/bf;Ljava/lang/String;)V

    :cond_25
    monitor-exit v2

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_26
    const-string v0, "syncing"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/mipush/sdk/bf;->b:Lcom/xiaomi/mipush/sdk/bf;

    invoke-virtual {v2, v3}, Lcom/xiaomi/mipush/sdk/al;->a(Lcom/xiaomi/mipush/sdk/bf;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-class v2, Lcom/xiaomi/mipush/sdk/al;

    monitor-enter v2

    :try_start_5
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->c(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_28

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/xiaomi/mipush/sdk/ax;->a(ZLjava/lang/String;)V

    :cond_27
    :goto_9
    monitor-exit v2

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_28
    :try_start_6
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->d(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_9

    :cond_29
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2a
    sget-object v2, Lcom/xiaomi/j/a/s;->U:Lcom/xiaomi/j/a/s;

    iget-object v2, v2, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/j/a/ab;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, v0, Lcom/xiaomi/j/a/ab;->g:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2c

    const-class v2, Lcom/xiaomi/mipush/sdk/al;

    monitor-enter v2

    :try_start_7
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->d(Ljava/lang/String;)V

    const-string v0, "syncing"

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/mipush/sdk/bf;->c:Lcom/xiaomi/mipush/sdk/bf;

    invoke-virtual {v1, v3}, Lcom/xiaomi/mipush/sdk/al;->a(Lcom/xiaomi/mipush/sdk/bf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/bf;->c:Lcom/xiaomi/mipush/sdk/bf;

    const-string v3, "synced"

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/mipush/sdk/al;->a(Lcom/xiaomi/mipush/sdk/bf;Ljava/lang/String;)V

    :cond_2b
    monitor-exit v2

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :cond_2c
    const-string v0, "syncing"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/mipush/sdk/bf;->c:Lcom/xiaomi/mipush/sdk/bf;

    invoke-virtual {v2, v3}, Lcom/xiaomi/mipush/sdk/al;->a(Lcom/xiaomi/mipush/sdk/bf;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-class v2, Lcom/xiaomi/mipush/sdk/al;

    monitor-enter v2

    :try_start_8
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->c(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_2e

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/ax;->a(Ljava/lang/String;)V

    :cond_2d
    :goto_a
    monitor-exit v2

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    :cond_2e
    :try_start_9
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->d(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_a

    :cond_2f
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/al;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_30
    instance-of v1, v0, Lcom/xiaomi/j/a/aj;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/xiaomi/j/a/aj;

    const-string v1, "registration id expired"

    iget-object v2, v0, Lcom/xiaomi/j/a/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/w;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/w;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/w;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/w;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    sget-object v5, Lcom/xiaomi/j/a/x;->a:Lcom/xiaomi/j/a/x;

    invoke-static {v4, v5}, Lcom/xiaomi/mipush/sdk/w;->a(Landroid/content/Context;Lcom/xiaomi/j/a/x;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Lcom/xiaomi/mipush/sdk/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lcom/xiaomi/mipush/sdk/w;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Lcom/xiaomi/mipush/sdk/w;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_33
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mipush/sdk/w;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_34
    const-string v1, "client_info_update_ok"

    iget-object v2, v0, Lcom/xiaomi/j/a/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v1

    const-string v2, "app_version"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v0

    const-string v1, "app_version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_35
    const-string v1, "awake_app"

    iget-object v2, v0, Lcom/xiaomi/j/a/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v1

    const-string v2, "packages"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v0

    const-string v1, "packages"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/mipush/sdk/w;->a(Landroid/content/Context;[Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_36
    sget-object v1, Lcom/xiaomi/j/a/s;->n:Lcom/xiaomi/j/a/s;

    iget-object v1, v1, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/j/a/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    new-instance v1, Lcom/xiaomi/j/a/ai;

    invoke-direct {v1}, Lcom/xiaomi/j/a/ai;-><init>()V

    :try_start_a
    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->m()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;[B)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/ao;->a(Lcom/xiaomi/push/service/an;Lcom/xiaomi/j/a/ai;)V
    :try_end_a
    .catch Lb/a/a/f; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_37
    sget-object v1, Lcom/xiaomi/j/a/s;->o:Lcom/xiaomi/j/a/s;

    iget-object v1, v1, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/j/a/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    new-instance v1, Lcom/xiaomi/j/a/ah;

    invoke-direct {v1}, Lcom/xiaomi/j/a/ah;-><init>()V

    :try_start_b
    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->m()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;[B)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/ao;->a(Lcom/xiaomi/push/service/an;Lcom/xiaomi/j/a/ah;)V
    :try_end_b
    .catch Lb/a/a/f; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_38
    sget-object v1, Lcom/xiaomi/j/a/s;->w:Lcom/xiaomi/j/a/s;

    iget-object v1, v1, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/j/a/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/mipush/sdk/bh;->a(Landroid/content/Context;Lcom/xiaomi/j/a/aj;)V

    goto/16 :goto_1

    :cond_39
    sget-object v1, Lcom/xiaomi/j/a/s;->x:Lcom/xiaomi/j/a/s;

    iget-object v1, v1, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/j/a/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v0, "receive force sync notification"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/bh;->a(Landroid/content/Context;Z)V

    goto/16 :goto_1

    :cond_3a
    sget-object v1, Lcom/xiaomi/j/a/s;->D:Lcom/xiaomi/j/a/s;

    iget-object v1, v1, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/j/a/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/n;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/n;->a(Lcom/xiaomi/j/a/aj;)V

    goto/16 :goto_1

    :cond_3b
    sget-object v1, Lcom/xiaomi/j/a/s;->F:Lcom/xiaomi/j/a/s;

    iget-object v1, v1, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/j/a/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/n;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/n;->b(Lcom/xiaomi/j/a/aj;)V

    goto/16 :goto_1

    :cond_3c
    sget-object v1, Lcom/xiaomi/j/a/s;->H:Lcom/xiaomi/j/a/s;

    iget-object v1, v1, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/j/a/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/n;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/n;->c(Lcom/xiaomi/j/a/aj;)V

    goto/16 :goto_1

    :cond_3d
    sget-object v1, Lcom/xiaomi/j/a/s;->L:Lcom/xiaomi/j/a/s;

    iget-object v1, v1, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/j/a/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, ""

    const/4 v2, -0x2

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/push/service/au;->I:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/push/service/au;->I:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    :try_start_c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_4

    move-result v1

    :goto_e
    const/4 v2, -0x1

    if-lt v1, v2, :cond_3e

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/w;->a(Landroid/content/Context;I)V

    goto/16 :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v1, -0x2

    goto :goto_e

    :cond_3e
    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/push/service/au;->G:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/push/service/au;->G:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_3f
    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/push/service/au;->H:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/push/service/au;->H:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_f
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/xiaomi/mipush/sdk/w;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_40
    sget-object v1, Lcom/xiaomi/j/a/s;->R:Lcom/xiaomi/j/a/s;

    iget-object v1, v1, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/j/a/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    :try_start_d
    new-instance v1, Lcom/xiaomi/j/a/al;

    invoke-direct {v1}, Lcom/xiaomi/j/a/al;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->m()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;[B)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/ac;->a(Landroid/content/Context;Lcom/xiaomi/j/a/al;)V
    :try_end_d
    .catch Lb/a/a/f; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_41
    sget-object v1, Lcom/xiaomi/j/a/s;->T:Lcom/xiaomi/j/a/s;

    iget-object v1, v1, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/j/a/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    :try_start_e
    new-instance v1, Lcom/xiaomi/j/a/as;

    invoke-direct {v1}, Lcom/xiaomi/j/a/as;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->m()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;[B)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/ac;->a(Landroid/content/Context;Lcom/xiaomi/j/a/as;)V
    :try_end_e
    .catch Lb/a/a/f; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_42
    sget-object v1, Lcom/xiaomi/j/a/s;->W:Lcom/xiaomi/j/a/s;

    iget-object v1, v1, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/j/a/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v1

    const-string v2, "packages"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v0

    const-string v1, "packages"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.xmsf"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/p;->a(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/mipush/sdk/as;->a(Landroid/content/Context;[Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_43
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/p;->a(Landroid/content/Context;Z)V

    goto/16 :goto_1

    :cond_44
    move-object v0, v2

    goto/16 :goto_f

    :cond_45
    move v1, v2

    goto/16 :goto_e

    :cond_46
    move-object v3, v1

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a(Lcom/xiaomi/j/a/ag;[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;Lcom/xiaomi/j/a/ag;)Lb/a/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message arrived: receiving an un-recognized message. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message arrived: receive a message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/mipush/sdk/k; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lb/a/a/f; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->a()Lcom/xiaomi/j/a/a;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message arrived: processing an arrived message, action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    sget-object v3, Lcom/xiaomi/mipush/sdk/au;->a:[I

    invoke-virtual {v2}, Lcom/xiaomi/j/a/a;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v0, Lcom/xiaomi/j/a/ao;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/ao;->l()Lcom/xiaomi/j/a/u;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "message arrived: receive an empty message without push content, drop it"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    const-string v0, "message arrived: receive a message but decrypt failed. report when click."

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    const-string v0, "message arrived: receive a message which action string is not valid. is the reg expired?"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    invoke-virtual {v3}, Lcom/xiaomi/j/a/v;->s()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v1, p1, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    iget-object v1, v1, Lcom/xiaomi/j/a/v;->j:Ljava/util/Map;

    const-string v3, "jobkey"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->m()Lcom/xiaomi/j/a/v;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/xiaomi/mipush/sdk/ar;->a(Lcom/xiaomi/j/a/ao;Lcom/xiaomi/j/a/v;Z)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/xiaomi/mipush/sdk/af;->a(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message arrived: receive a message, msgid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/j/a/u;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", jobkey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/as;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/as;->a:Lcom/xiaomi/mipush/sdk/as;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/as;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/as;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/as;->a:Lcom/xiaomi/mipush/sdk/as;

    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/as;->a:Lcom/xiaomi/mipush/sdk/as;

    return-object v0
.end method

.method private a()V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "last_reinitialize"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/j/a/x;->b:Lcom/xiaomi/j/a/x;

    invoke-static {v1, v4}, Lcom/xiaomi/mipush/sdk/w;->a(Landroid/content/Context;Lcom/xiaomi/j/a/x;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_reinitialize"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 6

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-boolean v4, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v4, :cond_1

    const-string v4, "com.xiaomi.mipush.sdk.PushMessageHandler"

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.xiaomi.mipush.sdk.SYNC_LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/b/a/d/h;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d/h;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/at;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/mipush/sdk/at;-><init>(Lcom/xiaomi/mipush/sdk/as;[Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/d/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/xiaomi/j/a/ag;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "receive a message but decrypt failed. report now."

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/j/a/aj;

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->m()Lcom/xiaomi/j/a/v;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/j/a/v;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/j/a/aj;-><init>(Ljava/lang/String;Z)V

    sget-object v1, Lcom/xiaomi/j/a/s;->u:Lcom/xiaomi/j/a/s;

    iget-object v1, v1, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/aj;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/aj;->b(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    iget-object v1, p1, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/aj;->d(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    iget-object v1, v0, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v2, "regid"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/w;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/j/a/a;->i:Lcom/xiaomi/j/a/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLcom/xiaomi/j/a/v;)V

    return-void
.end method

.method private a(Lcom/xiaomi/j/a/ao;Lcom/xiaomi/j/a/ag;)V
    .locals 4

    invoke-virtual {p2}, Lcom/xiaomi/j/a/ag;->m()Lcom/xiaomi/j/a/v;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/j/a/aa;

    invoke-direct {v1}, Lcom/xiaomi/j/a/aa;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ao;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/aa;->b(Ljava/lang/String;)Lcom/xiaomi/j/a/aa;

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ao;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/aa;->a(Ljava/lang/String;)Lcom/xiaomi/j/a/aa;

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ao;->l()Lcom/xiaomi/j/a/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/j/a/u;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/j/a/aa;->a(J)Lcom/xiaomi/j/a/aa;

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ao;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ao;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/aa;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aa;

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/j/a/ao;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ao;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/aa;->d(Ljava/lang/String;)Lcom/xiaomi/j/a/aa;

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/xiaomi/j/a/av;->a(Landroid/content/Context;Lcom/xiaomi/j/a/ag;)S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/aa;->a(S)Lcom/xiaomi/j/a/aa;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/j/a/a;->f:Lcom/xiaomi/j/a/a;

    invoke-virtual {v2, v1, v3, v0}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;Lcom/xiaomi/j/a/v;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/as;Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/as;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    sget-object v2, Lcom/xiaomi/mipush/sdk/as;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v1, Lcom/xiaomi/mipush/sdk/as;->c:Ljava/util/Queue;

    if-nez v1, :cond_0

    const-string v1, "pref_msg_ids"

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/xiaomi/mipush/sdk/as;->c:Ljava/util/Queue;

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    sget-object v7, Lcom/xiaomi/mipush/sdk/as;->c:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/as;->c:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    monitor-exit v2

    :goto_1
    return v0

    :cond_1
    sget-object v1, Lcom/xiaomi/mipush/sdk/as;->c:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/xiaomi/mipush/sdk/as;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v4, 0x19

    if-le v1, v4, :cond_2

    sget-object v1, Lcom/xiaomi/mipush/sdk/as;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_2
    sget-object v1, Lcom/xiaomi/mipush/sdk/as;->c:Ljava/util/Queue;

    const-string v4, ","

    invoke-static {v1, v4}, Lcom/xiaomi/b/a/h/d;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_msg_ids"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/bg;->a(Landroid/content/SharedPreferences$Editor;)V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Lcom/xiaomi/j/a/ag;)V
    .locals 5

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->m()Lcom/xiaomi/j/a/v;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/j/a/aa;

    invoke-direct {v1}, Lcom/xiaomi/j/a/aa;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/aa;->b(Ljava/lang/String;)Lcom/xiaomi/j/a/aa;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/v;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/aa;->a(Ljava/lang/String;)Lcom/xiaomi/j/a/aa;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/v;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/j/a/aa;->a(J)Lcom/xiaomi/j/a/aa;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/v;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/j/a/v;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/j/a/aa;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aa;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/j/a/av;->a(Landroid/content/Context;Lcom/xiaomi/j/a/ag;)S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/j/a/aa;->a(S)Lcom/xiaomi/j/a/aa;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/j/a/a;->f:Lcom/xiaomi/j/a/a;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->m()Lcom/xiaomi/j/a/v;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLcom/xiaomi/j/a/v;)V

    return-void
.end method

.method private c(Lcom/xiaomi/j/a/ag;)Z
    .locals 3

    const-string v0, "com.miui.hybrid"

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->m()Lcom/xiaomi/j/a/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->m()Lcom/xiaomi/j/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/j/a/v;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "hybrid_message"

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->m()Lcom/xiaomi/j/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/j/a/v;->s()Ljava/util/Map;

    move-result-object v0

    const-string v2, "push_server_action"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .locals 12

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive an intent from server, action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    const-string v0, "mrt"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v1, "mipush_payload"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    const-string v1, "mipush_notified"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v1, "messageId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "eventMessageType"

    const/4 v5, -0x1

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v3, :cond_1

    const-string v0, "receiving an empty message, drop"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v0

    const-string v1, "receiving an empty message, drop"

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Intent;Ljava/lang/String;)V

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/xiaomi/j/a/ag;

    invoke-direct {v1}, Lcom/xiaomi/j/a/ag;-><init>()V

    :try_start_0
    invoke-static {v1, v3}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;[B)V

    iget-object v7, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v7

    invoke-virtual {v1}, Lcom/xiaomi/j/a/ag;->m()Lcom/xiaomi/j/a/v;

    move-result-object v8

    invoke-virtual {v1}, Lcom/xiaomi/j/a/ag;->a()Lcom/xiaomi/j/a/a;

    move-result-object v9

    sget-object v10, Lcom/xiaomi/j/a/a;->e:Lcom/xiaomi/j/a/a;

    if-ne v9, v10, :cond_2

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/xiaomi/mipush/sdk/e;->k()Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v2, :cond_2

    const-string v9, "mrt"

    invoke-virtual {v8, v9, v0}, Lcom/xiaomi/j/a/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mat"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Lcom/xiaomi/j/a/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/xiaomi/mipush/sdk/as;->c(Lcom/xiaomi/j/a/ag;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/xiaomi/mipush/sdk/as;->b(Lcom/xiaomi/j/a/ag;)V

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/xiaomi/j/a/ag;->a()Lcom/xiaomi/j/a/a;

    move-result-object v0

    sget-object v9, Lcom/xiaomi/j/a/a;->e:Lcom/xiaomi/j/a/a;

    if-ne v0, v9, :cond_8

    invoke-virtual {v1}, Lcom/xiaomi/j/a/ag;->c()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v1}, Lcom/xiaomi/push/service/ah;->b(Lcom/xiaomi/j/a/ag;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v2, "drop an un-encrypted messages. %1$s, %2$s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/xiaomi/j/a/ag;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/xiaomi/j/a/v;->b()Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v2

    const-string v3, "drop an un-encrypted messages. %1$s, %2$s"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/xiaomi/j/a/ag;->j()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x1

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/xiaomi/j/a/v;->b()Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Intent;Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    :cond_3
    const-string v0, "this is a mina\'s message, ack later"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->b(Ljava/lang/String;)V

    const-string v0, "__hybrid_message_ts"

    invoke-virtual {v8}, Lcom/xiaomi/j/a/v;->d()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Lcom/xiaomi/j/a/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "__hybrid_device_status"

    iget-object v9, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v9, v1}, Lcom/xiaomi/j/a/av;->a(Landroid/content/Context;Lcom/xiaomi/j/a/ag;)S

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Lcom/xiaomi/j/a/v;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lb/a/a/f; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Intent;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    move-object v0, v6

    goto/16 :goto_0

    :cond_5
    :try_start_1
    const-string v0, ""

    goto :goto_2

    :cond_6
    const-string v0, ""

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_9

    invoke-virtual {v8}, Lcom/xiaomi/j/a/v;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v8}, Lcom/xiaomi/j/a/v;->s()Ljava/util/Map;

    move-result-object v0

    const-string v9, "notify_effect"

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {v7}, Lcom/xiaomi/mipush/sdk/e;->i()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    sget-object v8, Lcom/xiaomi/j/a/a;->a:Lcom/xiaomi/j/a/a;

    if-eq v0, v8, :cond_c

    invoke-static {v1}, Lcom/xiaomi/push/service/ah;->b(Lcom/xiaomi/j/a/ag;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/as;->a(Lcom/xiaomi/j/a/ag;Z[BLjava/lang/String;I)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string v0, "drop an un-encrypted messages. %1$s, %2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/xiaomi/j/a/ag;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v8}, Lcom/xiaomi/j/a/v;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v2

    const-string v3, "drop an un-encrypted messages. %1$s, %2$s"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/xiaomi/j/a/ag;->j()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x1

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/xiaomi/j/a/v;->b()Ljava/lang/String;

    move-result-object v0

    :goto_5
    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Intent;Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    :cond_a
    const-string v0, ""

    goto :goto_5

    :cond_b
    const-string v0, "receive message without registration. need re-register!"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v0

    const-string v1, "receive message without registration. need re-register!"

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/as;->a()V
    :try_end_1
    .catch Lb/a/a/f; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Intent;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_c
    :try_start_2
    invoke-virtual {v7}, Lcom/xiaomi/mipush/sdk/e;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v7}, Lcom/xiaomi/mipush/sdk/e;->m()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    sget-object v1, Lcom/xiaomi/j/a/a;->b:Lcom/xiaomi/j/a/a;

    if-ne v0, v1, :cond_d

    invoke-virtual {v7}, Lcom/xiaomi/mipush/sdk/e;->h()V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/w;->e(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/w;->g(Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_e
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/as;->a(Lcom/xiaomi/j/a/ag;Z[BLjava/lang/String;I)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    :try_end_2
    .catch Lb/a/a/f; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const-string v0, "com.xiaomi.mipush.ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/xiaomi/mipush/sdk/ae;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/ae;-><init>()V

    new-instance v1, Lcom/xiaomi/j/a/ag;

    invoke-direct {v1}, Lcom/xiaomi/j/a/ag;-><init>()V

    :try_start_3
    const-string v2, "mipush_payload"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-static {v1, v2}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;[B)V
    :try_end_3
    .catch Lb/a/a/f; {:try_start_3 .. :try_end_3} :catch_4

    :cond_10
    :goto_6
    invoke-virtual {v1}, Lcom/xiaomi/j/a/ag;->a()Lcom/xiaomi/j/a/a;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/ae;->a(Ljava/lang/String;)V

    const-string v1, "mipush_error_code"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/mipush/sdk/ae;->a(J)V

    const-string v1, "mipush_error_msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/ae;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive a error message. code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mipush_error_code"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mipush_error_msg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v0, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "message arrived: receiving an empty message, drop"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    :cond_12
    new-instance v1, Lcom/xiaomi/j/a/ag;

    invoke-direct {v1}, Lcom/xiaomi/j/a/ag;-><init>()V

    :try_start_4
    invoke-static {v1, v0}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;[B)V

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/as;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v2

    invoke-static {v1}, Lcom/xiaomi/push/service/ah;->b(Lcom/xiaomi/j/a/ag;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v0, "message arrived: receive ignore reg message, ignore!"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Lb/a/a/f; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_4

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_13
    :try_start_5
    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/e;->i()Z

    move-result v3

    if-nez v3, :cond_14

    const-string v0, "message arrived: receive message without registration. need unregister or re-register!"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Lb/a/a/f; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_14
    :try_start_6
    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/e;->i()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/e;->m()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v0, "message arrived: app info is invalidated"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_15
    invoke-direct {p0, v1, v0}, Lcom/xiaomi/mipush/sdk/as;->a(Lcom/xiaomi/j/a/ag;[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    :try_end_6
    .catch Lb/a/a/f; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v0

    goto/16 :goto_0

    :catch_4
    move-exception v2

    goto/16 :goto_6
.end method

.method public a(Ljava/util/TimeZone;Ljava/util/TimeZone;Ljava/util/List;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            "Ljava/util/TimeZone;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object p3

    :cond_0
    const-wide/16 v4, 0x5a0

    invoke-virtual/range {p1 .. p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    int-to-long v6, v2

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v14, 0x3c

    mul-long/2addr v8, v14

    add-long/2addr v8, v10

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    rem-long/2addr v8, v4

    const-wide/16 v10, 0x3c

    mul-long/2addr v10, v12

    add-long/2addr v2, v10

    sub-long/2addr v2, v6

    add-long/2addr v2, v4

    rem-long/2addr v2, v4

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct/range {p3 .. p3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "%1$02d:%2$02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v10, 0x3c

    div-long v10, v8, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-wide/16 v10, 0x3c

    rem-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "%1$02d:%2$02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v8, 0x3c

    div-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x3c

    rem-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
