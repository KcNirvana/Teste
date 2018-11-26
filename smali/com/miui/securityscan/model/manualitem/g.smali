.class Lcom/miui/securityscan/model/manualitem/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/miui/securityscan/model/manualitem/FlowRankModel;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/manualitem/FlowRankModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/g;->this$0:Lcom/miui/securityscan/model/manualitem/FlowRankModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/g;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/g;->this$0:Lcom/miui/securityscan/model/manualitem/FlowRankModel;

    iget-object v2, p0, Lcom/miui/securityscan/model/manualitem/g;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/miui/securityscan/model/manualitem/FlowRankModel;->Bx(Lcom/miui/securityscan/model/manualitem/FlowRankModel;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/g;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
