.class final Lcom/miui/c/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bcM:Lcom/miui/c/d;

.field final synthetic bcN:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/c/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/c/i;->bcM:Lcom/miui/c/d;

    iput-object p2, p0, Lcom/miui/c/i;->bcN:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/c/i;->bcM:Lcom/miui/c/d;

    invoke-static {v0}, Lcom/miui/c/d;->bzl(Lcom/miui/c/d;)Lcom/miui/d/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/c/i;->bcM:Lcom/miui/c/d;

    invoke-static {v0}, Lcom/miui/c/d;->bzm(Lcom/miui/c/d;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/c/i;->bcM:Lcom/miui/c/d;

    invoke-static {v0}, Lcom/miui/c/d;->bzl(Lcom/miui/c/d;)Lcom/miui/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/c/i;->bcN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/d/d;->bBc(Ljava/lang/String;)V

    return-void
.end method
