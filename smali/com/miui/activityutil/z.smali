.class final Lcom/miui/activityutil/z;
.super Lcom/miui/activityutil/ae;
.source ""


# instance fields
.field final synthetic a:Lcom/miui/activityutil/w;


# direct methods
.method constructor <init>(Lcom/miui/activityutil/w;Lcom/miui/activityutil/w;)V
    .locals 0

    iput-object p2, p0, Lcom/miui/activityutil/z;->a:Lcom/miui/activityutil/w;

    invoke-direct {p0, p1}, Lcom/miui/activityutil/ae;-><init>(Lcom/miui/activityutil/w;)V

    return-void
.end method


# virtual methods
.method final a(IIZ)V
    .locals 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/miui/activityutil/s;

    invoke-direct {v0}, Lcom/miui/activityutil/s;-><init>()V

    new-instance v1, Lcom/miui/activityutil/d;

    iget-object v2, p0, Lcom/miui/activityutil/z;->a:Lcom/miui/activityutil/w;

    invoke-static {v2}, Lcom/miui/activityutil/w;->a(Lcom/miui/activityutil/w;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/activityutil/d;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/activityutil/z;->a:Lcom/miui/activityutil/w;

    invoke-static {v2}, Lcom/miui/activityutil/w;->a(Lcom/miui/activityutil/w;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/miui/activityutil/w;->d()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/activityutil/d;->b()[B

    move-result-object v1

    new-instance v4, Lcom/miui/activityutil/aa;

    invoke-direct {v4, p0}, Lcom/miui/activityutil/aa;-><init>(Lcom/miui/activityutil/z;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/miui/activityutil/s;->a(Landroid/content/Context;[Ljava/lang/String;[BLcom/miui/activityutil/t;)V

    return-void

    :cond_1
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    if-nez p3, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/miui/activityutil/z;->a:Lcom/miui/activityutil/w;

    invoke-static {v0}, Lcom/miui/activityutil/w;->b(Lcom/miui/activityutil/w;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/activityutil/z;->a:Lcom/miui/activityutil/w;

    invoke-static {v0, p2}, Lcom/miui/activityutil/w;->b(Lcom/miui/activityutil/w;I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/activityutil/z;->a:Lcom/miui/activityutil/w;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/miui/activityutil/w;->a(Lcom/miui/activityutil/w;I)V

    goto :goto_0
.end method
