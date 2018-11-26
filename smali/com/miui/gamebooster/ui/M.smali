.class final Lcom/miui/gamebooster/ui/M;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/common/customview/b;


# instance fields
.field final synthetic de:Lcom/miui/gamebooster/ui/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/M;->de:Lcom/miui/gamebooster/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ei(F)V
    .locals 2

    const v0, 0x3ca3d70a    # 0.02f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/M;->de:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bh(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/b/i;->notifyDataSetChanged()V

    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/M;->de:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bl(Lcom/miui/gamebooster/ui/c;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/gamebooster/a/t;->hr()V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/M;->de:Lcom/miui/gamebooster/ui/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bD(Lcom/miui/gamebooster/ui/c;Z)Z

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/M;->de:Lcom/miui/gamebooster/ui/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bD(Lcom/miui/gamebooster/ui/c;Z)Z

    goto :goto_0
.end method
