.class final Lcom/miui/activityutil/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/activityutil/w;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/miui/activityutil/w;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/activityutil/x;->a:Lcom/miui/activityutil/w;

    iput p2, p0, Lcom/miui/activityutil/x;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/miui/activityutil/x;)Lcom/miui/activityutil/w;
    .locals 1

    iget-object v0, p0, Lcom/miui/activityutil/x;->a:Lcom/miui/activityutil/w;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Lcom/miui/activityutil/s;

    invoke-direct {v0}, Lcom/miui/activityutil/s;-><init>()V

    new-instance v1, Lcom/miui/activityutil/d;

    iget-object v2, p0, Lcom/miui/activityutil/x;->a:Lcom/miui/activityutil/w;

    invoke-static {v2}, Lcom/miui/activityutil/w;->a(Lcom/miui/activityutil/w;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/activityutil/d;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/miui/activityutil/x;->b:I

    invoke-virtual {v1, v2}, Lcom/miui/activityutil/d;->a(I)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/activityutil/x;->a:Lcom/miui/activityutil/w;

    invoke-static {v3}, Lcom/miui/activityutil/w;->a(Lcom/miui/activityutil/w;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/miui/activityutil/w;->b()[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/activityutil/y;

    invoke-direct {v5, p0, v1, v2}, Lcom/miui/activityutil/y;-><init>(Lcom/miui/activityutil/x;Lcom/miui/activityutil/d;Ljava/io/File;)V

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/miui/activityutil/s;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/io/File;Lcom/miui/activityutil/t;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/activityutil/w;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getInfo error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/activityutil/x;->a:Lcom/miui/activityutil/w;

    invoke-static {v0}, Lcom/miui/activityutil/w;->b(Lcom/miui/activityutil/w;)V

    return-void
.end method
