.class final Lcom/miui/gamebooster/d/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic sR:Lcom/miui/gamebooster/d/b;

.field final synthetic sS:Z


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/d/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/d/j;->sR:Lcom/miui/gamebooster/d/b;

    iput-boolean p2, p0, Lcom/miui/gamebooster/d/j;->sS:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/d/j;->sR:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->uK()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->up(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/j;->sR:Lcom/miui/gamebooster/d/b;

    iget-boolean v1, p0, Lcom/miui/gamebooster/d/j;->sS:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/d/b;->uN(Z)V

    return-void
.end method
