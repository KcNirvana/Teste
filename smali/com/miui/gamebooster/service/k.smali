.class final Lcom/miui/gamebooster/service/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mH:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/k;->mH:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

    iput-object p2, p0, Lcom/miui/gamebooster/service/k;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/k;->mH:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

    iget-object v0, v0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->lC:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nI(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/k;->mH:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

    iget-object v1, p0, Lcom/miui/gamebooster/service/k;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->or(Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
