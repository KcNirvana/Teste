.class final Lcom/miui/gamebooster/gbservices/A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ql:Lcom/miui/gamebooster/gbservices/h;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/h;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/A;->ql:Lcom/miui/gamebooster/gbservices/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/A;->ql:Lcom/miui/gamebooster/gbservices/h;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/h;->sv(Lcom/miui/gamebooster/gbservices/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/A;->ql:Lcom/miui/gamebooster/gbservices/h;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/h;->sw(Lcom/miui/gamebooster/gbservices/h;)Landroid/app/StatusBarManager;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    const-string/jumbo v0, "game_IsAntiMsg"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
