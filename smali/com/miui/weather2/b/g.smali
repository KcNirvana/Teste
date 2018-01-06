.class Lcom/miui/weather2/b/g;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/b/f;


# direct methods
.method constructor <init>(Lcom/miui/weather2/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/b/g;->a:Lcom/miui/weather2/b/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/weather2/b/g;->a:Lcom/miui/weather2/b/f;

    invoke-static {v0}, Lcom/miui/weather2/b/f;->a(Lcom/miui/weather2/b/f;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v0, v1

    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/miui/weather2/b/g;->a:Lcom/miui/weather2/b/f;

    invoke-static {v4}, Lcom/miui/weather2/b/f;->b(Lcom/miui/weather2/b/f;)[J

    move-result-object v4

    aget-wide v4, v4, v0

    sub-long v4, v2, v4

    invoke-static {}, Lcom/miui/weather2/b/f;->e()[I

    move-result-object v6

    aget v6, v6, v0

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/miui/weather2/b/g;->a:Lcom/miui/weather2/b/f;

    invoke-static {v4, v0}, Lcom/miui/weather2/b/f;->a(Lcom/miui/weather2/b/f;I)V

    iget-object v4, p0, Lcom/miui/weather2/b/g;->a:Lcom/miui/weather2/b/f;

    invoke-static {v4}, Lcom/miui/weather2/b/f;->c(Lcom/miui/weather2/b/f;)[Z

    move-result-object v4

    const/4 v5, 0x1

    aput-boolean v5, v4, v0

    iget-object v4, p0, Lcom/miui/weather2/b/g;->a:Lcom/miui/weather2/b/f;

    invoke-static {v4}, Lcom/miui/weather2/b/f;->b(Lcom/miui/weather2/b/f;)[J

    move-result-object v4

    aput-wide v2, v4, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/b/g;->a:Lcom/miui/weather2/b/f;

    invoke-virtual {v0}, Lcom/miui/weather2/b/f;->invalidateSelf()V

    iget-object v0, p0, Lcom/miui/weather2/b/g;->a:Lcom/miui/weather2/b/f;

    invoke-static {v0}, Lcom/miui/weather2/b/f;->d(Lcom/miui/weather2/b/f;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method
