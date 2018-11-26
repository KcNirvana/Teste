.class final Lcom/miui/activityutil/ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/activityutil/w;

.field private final synthetic b:Lcom/miui/activityutil/ae;


# direct methods
.method constructor <init>(Lcom/miui/activityutil/w;Lcom/miui/activityutil/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/activityutil/ab;->a:Lcom/miui/activityutil/w;

    iput-object p2, p0, Lcom/miui/activityutil/ab;->b:Lcom/miui/activityutil/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/activityutil/ab;->a:Lcom/miui/activityutil/w;

    invoke-static {v0}, Lcom/miui/activityutil/w;->a(Lcom/miui/activityutil/w;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/miui/activityutil/w;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/miui/activityutil/af;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    const/4 v0, 0x6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v6}, Lcom/miui/activityutil/d;->a(Ljava/io/File;)[B

    move-result-object v7

    if-nez v7, :cond_2

    move v2, v3

    move v1, v4

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/miui/activityutil/ab;->b:Lcom/miui/activityutil/ae;

    iput v1, v3, Lcom/miui/activityutil/ae;->b:I

    iget-object v1, p0, Lcom/miui/activityutil/ab;->b:Lcom/miui/activityutil/ae;

    iput v0, v1, Lcom/miui/activityutil/ae;->c:I

    iget-object v0, p0, Lcom/miui/activityutil/ab;->b:Lcom/miui/activityutil/ae;

    iput-boolean v2, v0, Lcom/miui/activityutil/ae;->d:Z

    iget-object v0, p0, Lcom/miui/activityutil/ab;->a:Lcom/miui/activityutil/w;

    invoke-static {v0}, Lcom/miui/activityutil/w;->f(Lcom/miui/activityutil/w;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/activityutil/ac;

    iget-object v2, p0, Lcom/miui/activityutil/ab;->b:Lcom/miui/activityutil/ae;

    invoke-direct {v1, p0, v2}, Lcom/miui/activityutil/ac;-><init>(Lcom/miui/activityutil/ab;Lcom/miui/activityutil/ae;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    move v2, v3

    move v1, v4

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/miui/activityutil/ab;->a:Lcom/miui/activityutil/w;

    invoke-static {v8, v7}, Lcom/miui/activityutil/w;->a(Lcom/miui/activityutil/w;[B)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    move v2, v3

    move v1, v4

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move v2, v3

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/miui/activityutil/ab;->a:Lcom/miui/activityutil/w;

    invoke-static {v4}, Lcom/miui/activityutil/w;->d(Lcom/miui/activityutil/w;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/miui/activityutil/ab;->a:Lcom/miui/activityutil/w;

    invoke-static {v4}, Lcom/miui/activityutil/w;->e(Lcom/miui/activityutil/w;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    move v2, v3

    move v1, v5

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "interval"

    invoke-static {v0}, Lcom/miui/activityutil/d;->a(Ljava/lang/String;)V

    move v0, v2

    move v1, v5

    move v2, v3

    goto :goto_0

    :pswitch_2
    move v2, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
