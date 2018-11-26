.class final Lcom/miui/gamebooster/d/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic sX:Lcom/miui/gamebooster/d/b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/d/n;->sX:Lcom/miui/gamebooster/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/d/n;->sX:Lcom/miui/gamebooster/d/b;

    invoke-static {v0}, Lcom/miui/gamebooster/d/b;->uQ(Lcom/miui/gamebooster/d/b;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
