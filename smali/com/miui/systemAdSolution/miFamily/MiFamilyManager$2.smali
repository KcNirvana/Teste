.class Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$2;
.super Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker",
        "<",
        "Ljava/lang/String;",
        "Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;

.field final synthetic val$cid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$2;->this$0:Lcom/miui/systemAdSolution/miFamily/MiFamilyManager;

    iput-object p4, p0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$2;->val$cid:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    invoke-virtual {p0, p1}, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$2;->innerInvoke(Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public innerInvoke(Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/systemAdSolution/miFamily/MiFamilyManager$2;->val$cid:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;->getMiFamilyUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MiFamilyManager"

    const-string v2, "getMiFamilyUrl : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method
