.class final Lcom/miui/gamebooster/d/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic sN:Lcom/miui/gamebooster/d/b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/d/g;->sN:Lcom/miui/gamebooster/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/d/g;->sN:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->uK()V

    iget-object v0, p0, Lcom/miui/gamebooster/d/g;->sN:Lcom/miui/gamebooster/d/b;

    invoke-static {v0}, Lcom/miui/gamebooster/d/b;->uS(Lcom/miui/gamebooster/d/b;)Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lQ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/d/g;->sN:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->createFloatView()V

    :cond_0
    return-void
.end method
