.class final Lcom/miui/activityutil/aa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/activityutil/t;


# instance fields
.field final synthetic a:Lcom/miui/activityutil/z;


# direct methods
.method constructor <init>(Lcom/miui/activityutil/z;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/activityutil/aa;->a:Lcom/miui/activityutil/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/activityutil/aa;->a:Lcom/miui/activityutil/z;

    iget-object v0, v0, Lcom/miui/activityutil/z;->a:Lcom/miui/activityutil/w;

    invoke-static {v0}, Lcom/miui/activityutil/w;->b(Lcom/miui/activityutil/w;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/activityutil/aa;->a:Lcom/miui/activityutil/z;

    iget-object v0, v0, Lcom/miui/activityutil/z;->a:Lcom/miui/activityutil/w;

    invoke-static {v0, p1}, Lcom/miui/activityutil/w;->b(Lcom/miui/activityutil/w;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/miui/activityutil/aa;->a:Lcom/miui/activityutil/z;

    iget-object v0, v0, Lcom/miui/activityutil/z;->a:Lcom/miui/activityutil/w;

    invoke-static {v0}, Lcom/miui/activityutil/w;->b(Lcom/miui/activityutil/w;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/activityutil/aa;->a:Lcom/miui/activityutil/z;

    iget-object v0, v0, Lcom/miui/activityutil/z;->a:Lcom/miui/activityutil/w;

    invoke-static {v0}, Lcom/miui/activityutil/w;->b(Lcom/miui/activityutil/w;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/activityutil/aa;->a:Lcom/miui/activityutil/z;

    iget-object v1, v1, Lcom/miui/activityutil/z;->a:Lcom/miui/activityutil/w;

    invoke-static {v1}, Lcom/miui/activityutil/w;->a(Lcom/miui/activityutil/w;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/miui/activityutil/w;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/activityutil/af;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/activityutil/d;->a(Ljava/io/File;[B)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/activityutil/aa;->a:Lcom/miui/activityutil/z;

    iget-object v0, v0, Lcom/miui/activityutil/z;->a:Lcom/miui/activityutil/w;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/miui/activityutil/w;->a(Lcom/miui/activityutil/w;I)V

    iget-object v0, p0, Lcom/miui/activityutil/aa;->a:Lcom/miui/activityutil/z;

    iget-object v0, v0, Lcom/miui/activityutil/z;->a:Lcom/miui/activityutil/w;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/miui/activityutil/w;->b(Lcom/miui/activityutil/w;I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/activityutil/aa;->a:Lcom/miui/activityutil/z;

    iget-object v0, v0, Lcom/miui/activityutil/z;->a:Lcom/miui/activityutil/w;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/miui/activityutil/w;->a(Lcom/miui/activityutil/w;I)V

    goto :goto_1
.end method
