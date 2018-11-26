.class final Lcom/miui/gamebooster/d/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic sJ:Lcom/miui/gamebooster/d/a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/d/c;->sJ:Lcom/miui/gamebooster/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "click"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gV(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/c;->sJ:Lcom/miui/gamebooster/d/a;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/a;->uA()V

    iget-object v0, p0, Lcom/miui/gamebooster/d/c;->sJ:Lcom/miui/gamebooster/d/a;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/a;->uB()V

    return-void
.end method
