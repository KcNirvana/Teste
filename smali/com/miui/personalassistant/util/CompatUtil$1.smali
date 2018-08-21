.class final Lcom/miui/personalassistant/util/CompatUtil$1;
.super Ljava/lang/Object;
.source "CompatUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/CompatUtil;->alignPhoneSubscribe(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bindedPhones:Ljava/util/List;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/CompatUtil$1;->val$bindedPhones:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/personalassistant/util/CompatUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v3, p0, Lcom/miui/personalassistant/util/CompatUtil$1;->val$bindedPhones:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/personalassistant/util/CompatUtil$1;->val$context:Landroid/content/Context;

    const-string/jumbo v5, "1"

    invoke-static {v4, v0, v5}, Lcom/miui/personalassistant/express/RemoteRequestManager;->getPhoneSubscribeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/personalassistant/request/core/JSONRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/personalassistant/request/core/JSONRequest;->getStatus()I

    move-result v2

    const-string/jumbo v4, "CompatUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "align phone subscribe, status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method
