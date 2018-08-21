.class Lcom/miui/personalassistant/provider/TransmissionProxy$2;
.super Ljava/lang/Object;
.source "TransmissionProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/provider/TransmissionProxy;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/provider/TransmissionProxy;

.field final synthetic val$args:[Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$s1:[Ljava/lang/String;

.field final synthetic val$s2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/provider/TransmissionProxy;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->this$0:Lcom/miui/personalassistant/provider/TransmissionProxy;

    iput-object p2, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->val$args:[Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->val$method:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->val$s1:[Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->val$s2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->this$0:Lcom/miui/personalassistant/provider/TransmissionProxy;

    iget-object v2, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->val$args:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->val$method:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->val$s1:[Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->val$s2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/miui/personalassistant/provider/TransmissionProxy;->onQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TransmissionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "method JSONException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->val$method:Ljava/lang/String;

    const-string/jumbo v2, "getCurrentLocation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->this$0:Lcom/miui/personalassistant/provider/TransmissionProxy;

    invoke-static {v1}, Lcom/miui/personalassistant/provider/TransmissionProxy;->access$000(Lcom/miui/personalassistant/provider/TransmissionProxy;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->this$0:Lcom/miui/personalassistant/provider/TransmissionProxy;

    iget-object v2, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->val$args:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->val$method:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->val$s1:[Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$2;->val$s2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/miui/personalassistant/provider/TransmissionProxy;->initQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "TransmissionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "method Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
